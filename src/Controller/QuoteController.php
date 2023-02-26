<?php
// src/Controller/QuoteController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Controller\BaseController;

use App\Entity\Quote;
use Doctrine\Persistence\ManagerRegistry;

class QuoteController extends BaseController
{
    #[Route('/api/crypto')]
    public function index(Request $request, ManagerRegistry $doctrine): Response
    {
        self::init($request);
        
        $symbol = 'BTC/USD';
        if(!empty($request->query->get('symbol')) && 
              in_array($request->query->get('symbol'), array('BTC/USD', 'LTC/USD', 'ETH/USD', 'XRP/USD')) )
        {
           $symbol = $request->query->get('symbol');
        }
        
        $source = 1;
        if(!empty($request->query->get('source')) && 
              in_array($request->query->get('source'), array('1', '2')) )
        {
           $source = $request->query->get('source');
        }
        
        $period = 1;
        if(!empty($request->query->get('period')) && 
              in_array($request->query->get('period'), array('1', '5', '30')) )
        {
           $period = $request->query->get('period');
        }
        
        $data = [
            'chart' => [
                 'labels' => [],
                 'datasets' => [[ 
                       'label' => $symbol, 
                       'data' => []
                  ]]
            ],
            'statistics' => [
                 'min' => 0,
                 'max' => 1000,
                 'last' => 0,
                 'diff' => [
                    'value' => 0,
                    'suffix' => ''
                 ]
            ]
        ];
        
        $quotes = $doctrine->getRepository(Quote::class)->findBySymbolAndType( $source, $symbol, 'trade', $period );
        
        $min = PHP_INT_MAX;
        $max = PHP_INT_MIN;
        $cnt = $length = $first = $last = $diff = 0;
        foreach ($quotes as $quote)
        {
           if($cnt % $period == 0)
           {
              $length++;
              $price = $quote->getPrice();
              array_push($data['chart']['labels'], $quote->getTime()->format("Y-m-d H:i:s"));
              array_push($data['chart']['datasets'][0]['data'], $price);
              $min = $price < $min ? $price : $min;
              $max = $price > $max ? $price : $max;
           }
           $cnt++;
        }
        
        $data['statistics']['min'] = $min - ($max - $min) * 0.25;
        $data['statistics']['max'] = $max + ($max - $min) * 0.25;
        
        if($length > 0)
        {
           $first = $data['chart']['datasets'][0]['data'][$length-1];
           $last = $data['chart']['datasets'][0]['data'][0];
           $diff = round($last - $first, 2);
        }
        
        $data['statistics']['last'] = round($last, 2);
        $data['statistics']['diff']['value'] = $diff;
        $data['statistics']['diff']['suffix'] = ((array)self::$props->periods)[$period];
           
        if($diff > 0) 
        {
            // Green
            $data['chart']['datasets'][0]['borderColor'] = '#339966';
            $data['chart']['datasets'][0]['backgroundColor'] = '#c6ecd9';
        } 
        else if ($diff < 0)
        {
            // Red
            $data['chart']['datasets'][0]['borderColor'] = '#cc0000';
            $data['chart']['datasets'][0]['backgroundColor'] = '#ff9999';
        }
        else
        {
            $data['chart']['datasets'][0]['borderColor'] = '#cccccc';
            $data['chart']['datasets'][0]['backgroundColor'] = '#eeeeee';
        }
        
        $response = new Response();
        $response->headers->set('Content-Type', 'application/json');
        $response->headers->set('Access-Control-Allow-Origin', '*');
        $response->setContent(json_encode($data));
        
        return $response;
    }
}
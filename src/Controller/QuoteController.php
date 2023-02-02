<?php
// src/Controller/QuoteController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

use App\Entity\Quote;
use Doctrine\Persistence\ManagerRegistry;

class QuoteController extends AbstractController
{
    #[Route('/api/crypto')]
    public function index(Request $request, ManagerRegistry $doctrine): Response
    {
        $symbol = 'BTC/USD';
        if(!empty($request->query->get('symbol')) && 
              in_array($request->query->get('symbol'), array('BTC/USD', 'LTC/USD', 'ETH/USD', 'XRP/USD')) )
        {
           $symbol = $request->query->get('symbol');
        }
        
        $data = [
            'labels' => [],
            'datasets' => [[ 'label' => $symbol, 'data' => [] , 'borderColor' => '#36A2EB',
                             'backgroundColor' => '#9BD0F5']]
        ];
        
        $quotes = $doctrine->getRepository(Quote::class)->findBySymbolAndTypeLast24( $symbol, 'trade' );
        foreach ($quotes as $quote)
        {
           array_push($data['labels'], $quote->getTime()->format("Y-m-d H:i:s"));
           array_push($data['datasets'][0]['data'], $quote->getPrice());
        }
        
        $response = new Response();
        $response->headers->set('Content-Type', 'application/json');
        $response->headers->set('Access-Control-Allow-Origin', '*');
        $response->setContent(json_encode($data));
        
        return $response;
    }
}
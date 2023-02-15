<?php
// src/Controller/BaseController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class BaseController extends AbstractController
{
    protected static $props;
    
    protected function init(Request $request)
    {
        $session = new Session();
        $session->start();
        
        $lang = 'ENG';
        $header = 'Natalia Romanova PR Računarsko Programiranje Ce Plus Plus Beograd';
        $menu = array( 'ENG' => array( 'about' => 'About us', 'chat' => 'Chat', 'demo' => 'Demo' ),
                       'RUS' => array( 'about' => 'О нас', 'chat' => 'Чат', 'demo' => 'Демо' ),
                       'SRP' => array( 'about' => 'О нама', 'chat' => 'Ћаскање', 'demo' => 'Демо' ) );
        $periods = array( 'ENG' => array( '1' => 'in 24 hours', '5' => 'past 5 days', '30' => 'past month'),
                          'RUS' => array( '1' => 'за 24 часа', '5' => 'за 5 дней', '30' => 'за месяц'),
                          'SRP' => array( '1' => 'за 24 сата', '5' => 'у претходних 5 дана', '30' => 'претходног месеца') );

        if(!empty($request->query->get('lang')) && 
              in_array($request->query->get('lang'), array('ENG', 'RUS', 'SRP')) )
        {
           $request->getSession()->set('lang', $request->query->get('lang'));
        }
        
        if(!empty($request->getSession()->get('lang')))
        {
           $lang = $request->getSession()->get('lang');
        }

        self::$props = (object) array(
            'lang' => $lang,
            'header' => $header,
            'menu' => (object) $menu[$lang],
            'periods' => (object) $periods[$lang]  
        );
    }
}

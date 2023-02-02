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
        $header = 'Natalia Romanova PR Racunarsko Programiranje Ce Plus Plus Beograd';
        $menu = array( 'ENG' => array( 'about' => 'About US', 'projects' => 'Projects', 'demo' => 'Demo' ),
                       'RUS' => array( 'about' => 'О нас', 'projects' => 'Проекты', 'demo' => 'Демо' ),
                       'SRP' => array( 'about' => 'О нама', 'projects' => 'Пројекти', 'demo' => 'Демо' ) );

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
            'menu' => (object) $menu[$lang] 
        );
    }
}
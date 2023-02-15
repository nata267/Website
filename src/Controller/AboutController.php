<?php
// src/Controller/AboutController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Controller\BaseController;

use App\Entity\About;
use Doctrine\Persistence\ManagerRegistry;

class AboutController extends BaseController
{
    #[Route('/')]
    public function index(Request $request, ManagerRegistry $doctrine): Response
    {
        self::init($request);
        
        $about = $doctrine->getRepository(About::class)->findOneBy(['lang' => self::$props->lang, 'name' => 'about']);
        
        self::$props->contents = $about->getContents();
        self::$props->selected = 'about';
        
        return $this->render('about/index.html.twig', ['props' => self::$props]);
    }
    
    #[Route('/chat')]
    public function chat(Request $request, ManagerRegistry $doctrine): Response
    {
        self::init($request);
        
        $about = $doctrine->getRepository(About::class)->findOneBy(['lang' => self::$props->lang, 'name' => 'chat']);
        
        self::$props->contents = $about->getContents();
        self::$props->selected = 'chat';
        
        return $this->render('about/index.html.twig', ['props' => self::$props]);
    }
    
    #[Route('/demo')]
    public function demo(Request $request, ManagerRegistry $doctrine): Response
    {
       self::init($request);

       $about = $doctrine->getRepository(About::class)->findOneBy(['lang' => self::$props->lang, 'name' => 'demo']);
       self::$props->contents = $about->getContents();
       self::$props->selected = 'demo';

       return $this->render('about/index.html.twig', ['props' => self::$props]);
    }
}
<?php

namespace BlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="home")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('BlogBundle:Post');
        $query = $repository->createQueryBuilder('p')
            ->orderBy('p.pubDate', 'DESC')
            ->getQuery();

        $posts = $query->getResult();
        return $this->render('BlogBundle:Default:index.html.twig', ['posts' => $posts]);
    }

    /**
     * @Route("/post/{title}", name="singlePost")
     */
    public function postIdAction($title)
    {
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('BlogBundle:Post');
        $post = $repository->findOneBy(['title' => $title]);
        return $this->render('BlogBundle:Default:single.html.twig', ['post' => $post]);
    }

    /**
     * @Route("/category/{name}", name="category")
     */
    public function categoryAction($name)
    {
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('BlogBundle:Post');
        $posts = $repository->createQueryBuilder('post')
            ->join('post.categories','c')
            ->where('c.name = ?1')
            ->setParameter(1, $name)
            ->getQuery()->getResult();

        return $this->render('BlogBundle:Default:index.html.twig', ['posts' => $posts]);
    }
}

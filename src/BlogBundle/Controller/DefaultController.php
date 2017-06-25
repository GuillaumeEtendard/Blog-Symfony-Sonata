<?php

namespace BlogBundle\Controller;

use BlogBundle\Entity\Comment;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\HttpException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="home")
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('BlogBundle:Post');
        $query = $repository->createQueryBuilder('p')
            ->orderBy('p.pubDate', 'DESC')
            ->getQuery();

        $paginator = $this->get('knp_paginator');
        $posts = $paginator->paginate(
            $query, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
            5/*limit per page*/
        );

        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('BlogBundle:PostCategory');
        $categories = $repository->findAll();
        return $this->render('BlogBundle:posts:index.html.twig', ['posts' => $posts, 'categories' => $categories]);
    }

    /**
     * @Route("/{slug}", name="slug")
     */
    public function slugAction(Request $request, $slug)
    {
        $user = $this->getUser();
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('BlogBundle:Post');
        $post = $repository->findOneBy(['slug' => $slug]);
        if ($post) {
            $comment = new Comment();
            $form = $this->createForm('BlogBundle\Form\CommentType', $comment);
            $form->handleRequest($request);

            if ($form->isSubmitted() && $form->isValid()) {
                if(!$this->getUser()){
                    throw new NotFoundHttpException();
                }

                $em = $this->getDoctrine()->getManager();
                $comment->setPost($post);
                $comment->setAuthor($user);
                $em->persist($comment);
                $em->flush();

                return $this->redirectToRoute('slug', array('slug' => $slug));
            }

            return $this->render('BlogBundle:posts:single.html.twig', ['posts' => [$post], 'form' => $form->createView(), 'comment' => $comment]);
        } else {
            $repository = $em->getRepository('BlogBundle:Post');
            $query = $repository->createQueryBuilder('post')
                ->join('post.categories', 'c')
                ->where('c.name = ?1')
                ->setParameter(1, $slug);

            $paginator = $this->get('knp_paginator');
            $posts = $paginator->paginate(
                $query, /* query NOT result */
                $request->query->getInt('page', 1)/*page number*/,
                5/*limit per page*/
            );
            return $this->render('BlogBundle:posts:single.html.twig', ['posts' => $posts]);
        }
    }
}

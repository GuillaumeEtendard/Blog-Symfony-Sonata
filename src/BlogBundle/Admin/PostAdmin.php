<?php
namespace BlogBundle\Admin;

use BlogBundle\Service\Slug;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class PostAdmin extends AbstractAdmin
{
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper->add('title');
        $formMapper->add('content');
        $formMapper->add('categories');
        $formMapper->add('author');
        $formMapper->add('slug', null, ['required' => false, 'label' => 'Slug '. PHP_EOL . 'Si champ vide, généré automatiquement à partir du titre']);
    }

    public function preValidate($post)
    {
        if($post->getSlug()){
            $strToSlug = $post->getSlug();
        }else{
            $strToSlug = $post->getName();
        }
        $string = Slug::generateSlug($strToSlug);
        $post->setSlug($string);
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper->add('title');
        $datagridMapper->add('content');
    }
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper->addIdentifier('id');
        $listMapper->add('pubDate');
        $listMapper->add('lastUpdate');
        $listMapper->add('title');
        $listMapper->add('content');
        $listMapper->add('categories');
    }
}
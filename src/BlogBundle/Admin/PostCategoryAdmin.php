<?php
namespace BlogBundle\Admin;

use BlogBundle\Service\Slug;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class PostCategoryAdmin extends AbstractAdmin
{
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper->add('name');
        $formMapper->add('slug', null, ['required' => false, 'label' => 'Slug '. PHP_EOL . 'Si champ vide, généré automatiquement à partir du nom']);
    }
    public function preValidate($postCategory)
    {
        if($postCategory->getSlug()){
            $strToSlug = $postCategory->getSlug();
        }else{
            $strToSlug = $postCategory->getName();
        }
        $string = Slug::generateSlug($strToSlug);
        $postCategory->setSlug($string);
    }
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper->add('name');
    }
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper->addIdentifier('id');
        $listMapper->add('posts');
        $listMapper->add('name');
    }
}
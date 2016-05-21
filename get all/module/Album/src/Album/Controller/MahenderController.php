<?php
namespace Album\Controller;

 use Zend\Mvc\Controller\AbstractActionController;
 use Zend\View\Model\ViewModel;
 use Album\Model\Mahender;          // <-- Add this import
 use Album\Form\MahenderForm;       // <-- Add this

 class MahenderController extends AbstractActionController {

 protected $mahenderTable;


public function indexAction(){

$form = new MahenderForm();
         $form->get('submit')->setValue('Add Mahender');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $album = new Mahender();
             $form->setInputFilter($album->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 $album->exchangeArray($form->getData());
                 $this->getMahenderTable()->saveMahender($album);

                 // Redirect to list of albums
                 return $this->redirect()->toRoute('mahender');
             }
         }
         return array('form' => $form);

}

public function addAction(){

$form = new MahenderForm();
         $form->get('submit')->setValue('Add Mahender');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $album = new Mahender();
             $form->setInputFilter($album->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 $album->exchangeArray($form->getData());
                 $this->getMahenderTable()->saveMahender($album);

                 // Redirect to list of albums
                 return $this->redirect()->toRoute('mahender');
             }
         }
         return array('form' => $form);
}

     public function getMahenderTable()
     {
         if (!$this->mahenderTable) {
             $sm = $this->getServiceLocator();
             $this->mahenderTable = $sm->get('Album\Model\MahenderTable');
         }
         return $this->mahenderTable;
     }

 }
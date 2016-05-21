<?php
namespace Album\Form;
use Zend\Form\Form;

class MahenderForm extends Form{


	public function __construct($name = null){

		parent::__construct('mahender');
		
		$this->add(array(
			'name'=>'id',
			'type'=>'hidden'
			));
$this->add(array(
'name'=>'inputname',
'type'=>'Text',
'option'=>array(
'label'=>'Got Box'
	),

	));

$this->add(array(
'name'=>'inputage',
'type'=>'Text',
'option'=>array(
'label'=>'Second Box'
	),

	));

  $this->add(array(
             'name' => 'submit',
             'type' => 'Submit',
             'attributes' => array(
                 'value' => 'Go',
                 'id' => 'submitbutton',
             ),
             ));

	}
}
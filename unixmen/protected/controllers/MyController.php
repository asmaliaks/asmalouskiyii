<?php

class MyController extends Controller
{
    public $defaultAction = 'one';
    
    public function actionOne(){
        
        $model = Page::model()->findAll(array('order'=>'title ASC'));
        
        $this->render('one', array('model' => $model));
    }
    
    
    
    
}
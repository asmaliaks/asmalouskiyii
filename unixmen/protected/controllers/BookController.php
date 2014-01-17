<?php
class BookController extends Controller
{
    public function actionIndex($id){
     

    $model = Book::model()->findByPk($id);
        
    $vid = $this->render('index', array('model'=>$model), true);
    echo $vid;
    }
}
/*
 *    findByPk   
 *    findAllByPk
 *    find
 *    findAll
 *    findByAttributes
 *    findBySql
 *    findByAllSql
 *    count
 *    countBySql
 *    exists
 *    
 *    updateByPk
 * 
 * 
 */
<?php
//   foreach($model as $value){
//       $title = CHtml::encode($value->title);
//       echo $title;
//       echo '</br>';
//       echo CHtml::link($title, array('page/view', 'id'=>$value->id), array('target'=>'_blank'));
//       echo '<hr />';
//   }

$this->renderPartial('/part/_part', array('model'=>$model));
?>
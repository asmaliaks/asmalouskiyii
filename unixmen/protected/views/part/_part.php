<?php


echo '<pre>';
print_r($_POST);
echo '</pre>';

echo CHtml::form('','POST');
echo CHtml::textField('text');
echo '</br>';
echo CHtml::checkBoxList('chbList', '3', array(1=>'adzin',2=>'dva',3=>'tri'));
echo '</br>';

$pageArray = CHtml::listData($model,'id','title');
echo CHtml::dropDownList('droplist','',$pageArray);
echo CHtml::submitButton('jabosh');
echo CHtml::endForm();

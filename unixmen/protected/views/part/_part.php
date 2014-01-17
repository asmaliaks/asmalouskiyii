<?php


echo '<pre>';
print_r($_POST);
echo '</pre>';

echo CHtml::form('','POST');
echo CHtml::textField('text');
echo '</br>';
$pageArray = CHtml::listData($model,'id','title');
echo CHtml::dropDownList('droplist','',$pageArray);
echo CHtml::submitButton('jabosh');
echo CHtml::endForm();

<?php
$index = $_POST['index'];

$xml = new DOMDocument(); 
$xml->load ("trainers.xml");



$trainers = $xml->getElementsByTagName("trainer");
$trainers-> item($index)->parentNode->removeChild($trainers->item($index));

$xml->save("trainers.xml");

?>
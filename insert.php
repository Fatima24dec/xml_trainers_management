<?php
 $name = $_POST['name'];
 $email = $_POST['email'];
 $course = $_POST['course'];

$xml = new DOMDocument ();
$xml->load('trainers.xml');


$root = $xml->getElementsByTagName('trainers')->item(0);

$trainer = $xml->createElement('trainer');

$trainer->appendChild($xml->createElement('name', $name));
$trainer->appendChild($xml->createElement('email', $email));
$trainer->appendChild($xml->createElement('course', $course));

$root->appendChild($trainer);
$xml->save('trainers.xml');

?>
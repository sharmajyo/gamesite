<?php
require_once dirname(__FILE__).'/phpfunctions.php';
$keyword=$_POST['keyword'];

if($keyword!="")
{
	$query="select * from la where keyword like '%$keyword%' order by date DESC";
	$results=mysqli_query($GLOBALS['connection'],$query);

	while($row=mysqli_fetch_array($results)){
		$desc=$row['description'];
		$title=$row['title'];
		$date=$row['date'];

		echo $title . "<br>" . $desc. '<br>' . $date.'<br><br>';
	}
}
?>
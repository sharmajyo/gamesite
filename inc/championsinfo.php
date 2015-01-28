<?php
require_once dirname(__FILE__).'/phpfunctions.php';


if($_GET['action']=='getAll')
{
	echo json_encode(getAllChamp());
}
else if($_GET['action']=='getChampInfo')
{
	getChampInfo($_GET['name']);
}


function getAllChamp(){
	$query="select imagePath,name from challangers;";
	$results=mysqli_query($GLOBALS['connection'],$query);

	$champArray=array();
	$index=0;
	if($results)
	{
		while($row=$results->fetch_assoc())
		{
			$champArray[$index]=$row;
			$index++;
		}
	}

	return $champArray;
}


function getChampInfo($name){
	$query="select * from challangers where name='$name'";
	$results=mysqli_query($GLOBALS['connection'],$query);
	$row=mysqli_fetch_array($results);

	$htmlStr='Name:  '.$row['name'].'<br>';
	$htmlStr.='Role:  '.$row['role'].'<br>';
	$htmlStr.='Secondary Role:  '.$row['srole'].'<br>';
	$htmlStr.='Attack:  '.$row['attack'].'/100<br>';
	$htmlStr.='Health:  '.$row['health'].'/100<br>';
	$htmlStr.='Ability: '.$row['ability'].'/100<br>';
	$htmlStr.='Difficulty:  '.$row['difficulty'].'/100';

	echo $htmlStr;
}

?>


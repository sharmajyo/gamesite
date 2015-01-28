<?php
require_once dirname(__FILE__).'/phpfunctions.php';

$query="select * from la order by date DESC";
$result=mysqli_query($GLOBALS['connection'],$query);
?>

<div class="la">
	<div class="lahead"><h2>Latest Articles</h2></div>
	<div class="lapost">
		<?php
		while($row=mysqli_fetch_array($result))
		{
			$title=$row['title'];
			$desc=$row['description'];
			$date=$row['date'];
		?>
		<div class="labody">
			<div class="laposthead"><?php echo $title;?></div>
			<div class="lapostbody">
				<?php echo $desc;?><br><br>
				<?php echo $date;?>
			</div>
		</div>
		<?php }?>
	</div>			
</div>


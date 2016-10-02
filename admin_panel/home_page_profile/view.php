<?php
header('Access-Control-Allow-Origin: *');  
include_once 'dbconfig.php';
?>
    <?php
	$sql="SELECT * FROM logo";
	$result_set=mysql_query($sql);
$arrayall = array();
	while($row=mysql_fetch_assoc($result_set))
	{
        $arrayall[] = $row;
		?>
        <?php
          
	}
  echo json_encode($arrayall);
	?>
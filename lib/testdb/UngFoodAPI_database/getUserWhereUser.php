<?php
header("content-type:text/javascript;charset=utf-8");
error_reporting(0);
error_reporting(E_ERROR | E_PARSE);
$link = mysqli_connect('localhost', 'root', '', "Shaman");

if (!$link) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;

    exit;
}

if (!$link->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $link->error);
    exit();
	}

if (isset($_GET)) {
	if ($_GET['isAdd'] == 'true') {

		$Username = $_GET['username'];
    $Name = $_GET['name'];
	$lastname= $_GET['lastname'];
$password=$_GET['password'];
$choosetype=$_GET['choosetype'];
$sql= "INSERT INTO 'users('id','username','name','lastname','password',;choosetype') Values('Null','$username','$name','$lastname','$password','$choosetype')";
$result= mysqli_query('$link,$sql');
		if ($result) {

			while($row=mysqli_fetch_assoc($result)){
			$output[]=$row;

			}	// while

			echo json_encode($output);

		} //if

	} else echo "Susses";	// if2

}	// if1


	mysqli_close($link);
?>

<?
//cewc 2014-04-30 12:12:41error 
session_start();

include_once('connect.php');

	$user = trim(mysql_real_escape_string($_POST['uid']));

	if($user=='') {
		echo 'error';
		exit();
	}


	$sql = "select name from user where name='".$user."'";
    $result = mysql_query($sql) or die('error');


    $row = mysql_fetch_array($result);

    if($row[0]==$user){

    	// sign in
    	$_SESSION['user'] = $user;
    	echo "success";

    }
    else{

    $time = date("Y-m-d H:i:s");

    //echo $user . " ". $time;

    $sql = "insert into user(name) values('".$user."')";
    $sql2 = "insert into notify(name,time) values('".$user."','".$time."')";

    $result = mysql_query($sql) or die('error');
    $result = mysql_query($sql2) or die('error');

	$_SESSION['user'] = $user;
	echo "success";


    }



?>
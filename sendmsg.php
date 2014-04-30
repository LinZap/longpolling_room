<?

session_start();
session_write_close();
include_once('connect.php');

$c = trim(mysql_real_escape_string($_POST['content']));
	if($c=='') {echo"error1"; exit();}


$time = date("Y-m-d H:i:s");


//寫入
$sql = "insert into msg(send,content,time) values('".$_SESSION['user']."','".$c."','".$time."')";
$result = mysql_query($sql) or die('error2');

if($result){

	$sql = "update notify set isnews=1";
	$result2 = mysql_query($sql) or die('error3');

	$sql2 = "select isnews from notify where name='".$_SESSION['user']."'";
	$result2 = mysql_query($sql2) or die('error3');


	if($result2){

		$row = mysql_fetch_array($result2);

		echo "success,".$row[0];

	}

}



?>
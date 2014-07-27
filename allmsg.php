<?

session_start();
session_write_close();
include('connect.php');

// 目前的時間

$sql = "select * from msg";

$result = mysql_query($sql) or die('error');
$time = date("Y-m-d H:i:s");

// <div><h3>zap</h3>saascascascascas</div>
// <div><h3>sol</h3>sdvdsvds</div>
// <div><h3>sol</h3>ddddddddddddddddddddddddddd</div>

if($result){
	$sql2 = "update notify set isnews=0 , time ='".$time."' where name='".$_SESSION['user']."'";
	$result2 = mysql_query($sql2) or die('error2');


 while($row = mysql_fetch_array($result)){
       echo "<div><h3>".$row[2]."：　</h3>".$row[1]."</div>";
 }
 
}



?>
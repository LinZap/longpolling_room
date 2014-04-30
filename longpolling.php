<?
session_start();
//session only read
// no write
include_once('connect.php');

$user = $_SESSION['user'];


// 釋放session 給別之程式用
session_write_close();


for($i=0;$i<10;$i++){

	// 0 or 1
	if( isnew($user)=='1' ){

		// select db
		// update isnew =0 and time=now()
		// 子查詢 
		$sql = "select  send,content  from msg 
		where time >(select time from notify where name='".$user."')";

	
		$result = mysql_query($sql) or die('error1');

		//echo "result".$result;

		if($result){
			// select all of new msgs
			while($row = mysql_fetch_array($result)){
	       	echo "<div><h3>".$row[0]."：　</h3>".$row[1]."</div>";
	       	}

	       	// update notify.time
			$time = date("Y-m-d H:i:s");
			$sql2 = "update notify set isnews=0 , time ='".$time."' where name='".$user."'";
			$result2 = mysql_query($sql2) or die('error2');
	      
			if($result2){exit(0);}	
	       	
		}
	

	}


	// wait 1 sec
	sleep(1);

}



// 判斷是否有新資料
// 封閉區域
function isnew($user){

	$sql = "select isnews from notify where name='".$user."'";
	$result = mysql_query($sql);
	$row = mysql_fetch_array($result);
	//echo "isNews = ".$row[0];

	return $row[0];
}




?>
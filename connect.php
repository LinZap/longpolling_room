<?

    $dbhost = 'mysql5.000webhost.com';
    $dbuser = 'a1842796_zap';
    $dbpass = 'zxcvbnm123';
    $dbname = 'a1842796_onlyone';

    $conn = mysql_connect($dbhost, $dbuser, $dbpass) or die('Error with MySQL connection');
    
    mysql_query("SET NAMES 'utf8'");
    mysql_select_db($dbname)  or die("無法開啟資料庫$dbname連結!"); 


?>
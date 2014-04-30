<?php
session_start();
echo session_destroy();
echo '<meta http-equiv=REFRESH CONTENT=1;url=index.php charset=utf-8>';
echo '已登出...請等候畫面跳轉...';
?>

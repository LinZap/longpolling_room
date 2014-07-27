<? session_start(); ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Chat room</title>
	<style type="text/css">
	.c{
		text-align: center;
	}
	#sign-box{
		display: inline-block;
		text-align: center;
		height: 200px;
		width: 400px;
		background-color: #ece;
		margin-top: 180px;
	}
	#sign-box input[type='text']{
		height: 30px;
		width: 200px;
	}
	#sign-box input[type='button']{
		height: 35px;
		width: 80px;
		font-size: 20px;
	}
	#msgbox{
		width: 80%;
		padding: 5%;
		padding-bottom: 10%;
		background-color: #ded;
		margin-left: auto;
		margin-right: auto;
	}
	#content{
		background-color: #AAA;
		position: fixed;
		bottom: 5px;
		width: 100%;
		text-align: center;
		margin-top: 10px;
		padding: 2%;
	}

	#inmsg{
		width: 300px;
		height: 25px;
	}
	h3{
		display: inline-block;
		font-size: 20px;
	}
	#myname{
		font-size: 20px;
		font-weight: bold;

	}


	</style>
</head>
<body>
<div class="c">
	<div id="sign-box">
		<h1 id="boxt">請輸入一個名稱</h1>
		<input type="text" id="uid"><br><br>
		<input type="button" value="確定" id="smt">
		<h1 id='sign_wait'></h1>
	</div>
</div>

<div id="msgbox"></div>

<div id="content">
<span>
<span id="myname"></span><input type="text" id="inmsg">
<a href="logout.php">登出</a>
</span>

</div>




<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script>

	$(function(){

		

		$('#sign_wait , #msgbox , #content').hide();

		$('#smt').click(function(event) {
			
			// sign in or login
			if($('#uid').val()!=''){
			
				$.ajax({
					url: 'signin.php',
					type: 'post',
					data: {uid: $('#uid').val()},
					beforeSend:function(){
						loginui();
						$('#sign_wait').text('登入中，請稍後...');
					}
				})
				.done(function(data) {
					console.log(data);
					if(data=='error') $('#sign_wait').text('系統後端發生錯誤...');
					
					else{
						$('#sign_wait').text('正在進入...');
						$('.c').fadeOut(200);
						logined();
						$('#myname').text($('#uid').val());
					}


				})
				.fail(function() {
					$('#sign_wait').text('系統發生問題，請重試...');
				});
			}
		});

		/*
		$('#send').click(function(event) {

			if($('#inmsg').val()!=""){
				sendmsg($('#inmsg').val());
			}
			
		});*/	

		$('#inmsg').keypress(function(e) {
		    if(e.which == 13) 
		    	if($('#inmsg').val()!=""){
		    	var a = $('#inmsg').val();
		    	$('#inmsg').attr('disabled', '');	
		      	sendmsg(a);
		    }
		});


		function sendmsg(msgg){

			$.ajax({
				url: 'sendmsg.php',
				type: 'post',
				data: {content: msgg},
			})
			.done(function(data) {
				console.log("SEND MSG OK",data);		
				if(data.split(',')[0]=='success') 
					$('#inmsg').removeAttr('disabled').val("").focus();
			})
			.fail(function() {
				$('#send').hide();
			})
		}
		

		function logined(){
			loginui();
			$('.c').fadeOut(0);
			$('#msgbox , #content').fadeIn(100);
			$('#myname').text(<? echo "'".$_SESSION['user']."'"; ?>);
			// load all of msgs
			printallmsg();

			

		}

		// long polling
		function lonpolling(){

		var polling = $.ajax({

				url: 'longpolling.php',
				type: 'post',
				dataType: 'html',
				data: {},
			})
			.done(function(data) {
				console.log("Long polling",data);
				if(data!="") {

					$('#msgbox').append(data);

					var $body = (window.opera) ? (document.compatMode == "CSS1Compat" ? $('html') : $('body')) : $('html,body');
					$body.scrollTop($body[0].scrollHeight);
					
				}

			})
			.fail(function() {
				// cancel ajax
				polling.abort();

			})
			.always(function() {
				lonpolling();
			});
			
		}


		function loginui(){
			$('#sign_wait').show();
			$('#smt, #boxt, #uid').hide();
		}


		function printallmsg(){

			$.ajax({
				url: 'allmsg.php',
				type: 'post',
				dataType: 'html',
				data: {},
			})
			.done(function(data) {

				console.log("ALL",data);

				$('#msgbox').html(data);
				var $body = (window.opera) ? (document.compatMode == "CSS1Compat" ? $('html') : $('body')) : $('html,body');
					$body.scrollTop($body[0].scrollHeight);

				// stupid
				//setTimeout(function(){ printallmsg(); }, 1000);
				// ask the new
				lonpolling();
			})
			.fail(function() {
				$('#msgbox').prepend('<div>系統發生問題，請重試...</div>');
			});
			
		}


		<? if(isset($_SESSION['user'])) echo "logined();"; ?>

	});

</script>


</body>
</html>
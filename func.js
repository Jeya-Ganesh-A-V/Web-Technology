<!DOCTYPE html>
<html>
<head>
	<title>Login or Register</title>
    <script>
	    $(document).ready(function(){
	        $(".register_button").click(function(){
	          $(".login_button").css('background-color','white');
	          $(".register_button").css('background-color','#66CDAA');
	          $(".registerform").addClass("register-active");
	        });
	    });
	    $(document).ready(function(){
	        $(".login_button").click(function(){
	          $(".register_button").css('background-color','white');
	          $(".login_button").css('background-color','#66CDAA');
	          $(".registerform").removeClass("register-active");
	        });
	    });
	    $(document).ready(function(){
	        $(".home").click(function(){
	          window.location="index.php";
	        });
	    });
	</script>
</head>
</html>
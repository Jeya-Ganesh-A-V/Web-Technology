<!DOCTYPE html>
<html>
<head>
	<title>Admin Management</title>
    <script type="text/javascript">
		$(document).ready(function(){
	        $(".dropdown").mouseleave(function(){
	        	$(".dropdown-content").hide();
	        });
	    });
		$(document).ready(function(){
	        $(".dropdown").mouseenter(function(){
	        	$(".dropdown-content").show();
	        });
	    });
	    $(document).ready(function(){
	        $("#ename").click(function(){
	        	window.location="event_manage_edit.php#editname";
	        });
	    });
	    $(document).ready(function(){
	        $("#edate").click(function(){
	        	window.location="event_manage_edit.php#editdate";
	        });
	    });
	    $(document).ready(function(){
	        $("#etime").click(function(){
	        	window.location="event_manage_edit.php#edittime";
	        });
	    });
	    $(document).ready(function(){
	        $("#ecategory").click(function(){
	        	window.location="event_manage_edit.php#editcategory";
	        });
	    });
	    $(document).ready(function(){
	        $("#edescription").click(function(){
	        	window.location="event_manage_edit.php#editdescription";
	        });
	    });
	    $(document).ready(function(){
	        $("#evenue").click(function(){
	        	window.location="event_manage_edit.php#editvenue";
	        });
	    });
	    $(document).ready(function(){
	        $("#eprice").click(function(){
	        	window.location="event_manage_edit.php#editticketprice";
	        });
	    });
	    $(document).ready(function(){
	        $("#etotal").click(function(){
	        	window.location="event_manage_edit.php#edittickettotal";
	        });
	    });
	</script>
</head>
</html>
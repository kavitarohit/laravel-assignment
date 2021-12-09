@if(Auth::user())
<div class="container">
	<div class="row">
		<div class="col-md-4">
			<div class="list-group">
   
		    <a href="#" class="list-group-item active"><i class="fa fa-key"></i> <span>Customer</span></a>
		    <a href="#" class="list-group-item"><i class="fa fa-credit-card"></i> <span>Supplier</span></a>
		    <a href="#" class="list-group-item"><i class="fa fa-question-circle"></i> <span>Support</span></a>
		    <a href="#" class="list-group-item"><i class="fa fa-arrow-circle-o-left"></i> <span>Sandbox Account</span></a>
		    <a href="#" class="list-group-item"><i class="fa fa-book"></i> <span>QuickStart Overview</span></a>
		    <a href="#" class="list-group-item"><i class="fa fa-compass"></i> <span>Documentation</span></a>


		  </div>
		</div>
		<div class="col-md-8"></div>
	</div>
  
</div>
@else
<div class="container text-center">
  <h3>Welcome To</h3>
  <p>Customer And Supplier Management</p>
</div>
@endif

<script type="text/javascript">
	$(document).ready(function() {
  

	  $('.list-group-item').click(function(e) {
	    e.preventDefault();
	    $('.list-group-item').removeClass('active');
	    $(this).addClass('active');
	  });
	});
</script>

<style type="text/css">
	 .list-group {
     
     margin:auto;
     float:left;
     padding-top:20px;
    }
    .lead {
     
     margin:auto;
     left:0;
     right:0;
     padding-top:10%;
    }
    
</style>
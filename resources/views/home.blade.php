@if(Auth::user())
<div class="container">
	<div class="row">
		<div class="col-md-4">
			<div class="list-group">
   
		    

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
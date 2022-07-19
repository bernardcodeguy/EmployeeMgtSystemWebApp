<%@ include file="header.jsp" %>
	
	<form method="post" action="poo" id="add_form">
	
		<input type="text" name="name" id="name">
		<input type="text" name="age" id="age">
		<input type="submit">
	
	</form>
	
<%@ include file="med.jsp" %>

	<script>
	
		$(document).ready(function(){
			
			  
			  $("#add_form").submit(function(e) {

			        

				  var name = $("#name").val(); 
			      var age = $("#age").val();
			      
			      if(age == '50'){
			    	  e.preventDefault();
			    	  alert('Empty Field');
			      }
			        
			    });
			
		})
        

    </script>


<%@ include file="footer.jsp" %>
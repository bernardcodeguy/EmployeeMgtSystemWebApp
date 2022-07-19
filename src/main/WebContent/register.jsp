<%@ include file="header.jsp" %>

	 <div class="container" id="reg-container"> 
		 <div class="card">
		       <div class="card-content">	       
		       	<div class="row center-align">
		       		<div class="col s12">
		       			<span class="card-title teal-text text-lighten-2">Registration</span>
		       		</div>
		       	</div>	
		       		       	
		       	<form action="register" method="post">
		       	<div class="row center-align">
		       		
		       			<div class="col s12 m6 l6">
		       				<div class=input-field>
		       					<i class="material-icons prefix">create</i>
		       					<input type="text" id="fname" name="firstname" class="validate"  required>
		       					<label for="fname" class="active">First Name</label>
		       				</div>
		       			</div>
		       			
		       			<div class="col s12 m6 l6">
		       				<div class=input-field>
		       					<i class="material-icons prefix">create</i>
		       					<input type="text" id="lname" name="lastname" class="validate" required>
		       					<label for="lname" class="active">Last Name</label>
		       				</div>
		       			</div>
		       			
		       			<div class="col s12">
		       				<div class=input-field>
		       					<i class="material-icons prefix">email</i>
		       					<input type="email" id="email" name="email" class="validate" required>
		       					<label for="email" data-error="input error" data-success="" class="active">Email</label>
		       				</div>
		       			</div>
		       			
		       			<!-- Password -->
		       			
		       			<div class="col s12 m6 l6">
		       				<div class=input-field>
		       					<i class="material-icons prefix">https</i>
		       					<input type="password" id="pass1" name="pass1" class="validate" required>
		       					<label for="pass1" class="active">Password</label>
		       				</div>
		       			</div>
		       			
		       			<div class="col s12 m6 l6">
		       				<div class=input-field>
		       					<i class="material-icons prefix">https</i>
		       					<input type="password" id="pass2" name="pass2" class="validate" required>
		       					<label for="pass2" class="active">Confirm Password</label>
		       				</div>
		       			</div>
		       			
		       			
		       			<!-- Department/Role -->
		       			
		       			<div class="col s12 m6 l6">
		       				<div class=input-field>
		       					<i class="material-icons prefix">domain</i>
		       					<input type="text" id="depart" name="department" class="validate" required>
		       					<label for="depart" class="active">Department</label>
		       				</div>
		       			</div>
		       			
		       			<div class="col s12 m6 l6">
		       				<div class=input-field>
		       					<i class="material-icons prefix">create</i>
		       					<input type="text" id="job" name="job" required>
		       					<label for="job" class="active">Job Title</label>
		       				</div>
		       			</div>
		       			
		       			<div class="col s12">
		       				<div class=input-field>	       					
		       					<input type="submit" class="btn" value="Register">		       					
		       				</div>
		       			</div>
		       	</div>
		       			       	
		     </form>
		     
		     	<div class="row center-align">
		     	
		     		<p>Already a member? Login <a href="login.jsp">here</a></p>
		     		<p>Back to <a href="index.jsp">homepage</a></p>
		     	</div>
		     
		         	       	         
		       </div>
		     
		</div>	 
	 
	 </div>



<%@ include file="med.jsp" %>

	<script>
	
		$(document).ready(function(){
			M.updateTextFields();
		})
        

    </script>


<%@ include file="footer.jsp" %>
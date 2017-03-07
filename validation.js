function validate(){
	var pass1=document.myform.password;
	var passagain=document.myform.confirm_password;
	var username=document.myform.uname;
	var firstname=document.myform.fname;
	var lastname=document.myform.lname;
	var email=document.myform.email;
	var phoneno=document.myform.phno;
	var loc=document.myform.location;
	var phone = /^\d{10}$/;  
	
	if (username==null || username=="")
	{  
		document.form.Name.focus() ;
		  document.getElementById("errorBox").innerHTML = "UserID can't be Empty";
		     return false;
		
		return false;
	}
	
	if(pass1.length<6)
		 {  
		document.form.Name.focus() ;
		  document.getElementById("errorBox").innerHTML = "Password Must be gretter than 6 ";
		return false;
  		}
	if(!pass1==passagain)
	{
		document.form.Name.focus() ;
		  document.getElementById("errorBox").innerHTML = "Password and Confirm Password must same";
		return false;
	}
		  				if (firstname==null || firstname=="")
		  				{
		  					document.form.Name.focus() ;
		  				  document.getElementById("errorBox").innerHTML = "First name can't be Empty";
		  					  return false;
		  				}
		  				
		  					   if (!lastname==null || lastname=="")
			  				     {
		  						 document.form.Name.focus() ;
		  						  document.getElementById("errorBox").innerHTML = "Last name can't be Empty";
			  					  return false;
			  				     }
			  					    if (email==null || email=="")
				  				      {
			  					    	document.form.Name.focus() ;
			  						  document.getElementById("errorBox").innerHTML = "Email ID can't be Empty";
				  					     return false;
				  				      }
				  					      if((!phoneno.value.match(phone)))  
				  						        {   
				  					    	document.form.Name.focus() ;
				  						  document.getElementById("errorBox").innerHTML = "Phone Number can't be Empty";
				  						          return false;
				  						        }
				  						        if (loc==null || loc==""){
				  						        	document.form.Name.focus() ;
				  								  document.getElementById("errorBox").innerHTML = "Location  can't be Empty";
				  						        	return false;
				  						        }
				  						        
				  						        
				  						      if(firstname != '' && lastname != '' && email != '' && phoneno != '' && loc != '' && username != '' && pass1==passagain ){
				  						    	   document.getElementById("errorBox").innerHTML = "form submitted successfully";
				  						    	   }
				  						    	
}
 
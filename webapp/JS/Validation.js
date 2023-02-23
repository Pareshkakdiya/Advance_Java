 function checkFname(){
	var f=document.frm.fname.value;
	var reg=/^[A-Za-z]+$/;
	if(f==""){
		document.getElementById("fn").innerHTML="Please Enter First Name";
	}else if(!reg.test(f)){
		document.getElementById("fn").innerHTML="Please Enter Alphabets";
	}
	else{
		document.getElementById("fn").innerHTMl="";
	}
  }
  
  function checkLname(){
	  var l=document.frm.lname.value;
	  var reg=/^[a-zA-Z]+$/;
	  if(l==""){
		  document.getElementById("ln").innerHTML="please Enter Last Name";
		}else if(!reg.test(l)){
			document.getElementById("ln").innerHTML="please enter Alaphabets";
		}else{
			document.getElementById("ln").innerHTML="";
		}
	  }
  
  function checkMobileNumber(){
	  var m=document.frm.mobile.value;
	  var reg=/^\d{10}$/;
	  if(m==""){
		  document.getElementById("mn").innerHTML="Enter Mobile Number";
		}else if(!reg.test(m)){
			document.getElementById("mn").innerHTML="please enter 10 Digits";
		}else{
			document.getElementById("mn").innerHTML="";
		}
	  }
  
  function checkEmail(){
	  var e=document.frm.email.value;
	  var reg=/^[a-zA-z0-9-_.]+@[a-zA-Z]+\.[a-zA-Z]{2,4}$/
	  if(e==""){
		  document.getElementById("email").innerHTML="Enter Email Id";
		}else if(!reg.test(e)){
			document.getElementById("email").innerHTML="please enter valid email id";
		}else{
			document.getElementById("email").innerHTML="";
		}
	  }
  
  function checkPassword(){
	  var p=document.frm.password.value;
	  var reg=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^0-9a-zA-Z])(?!.*\s).{8,15}$/;
	  if(p==""){
		  document.getElementById("pw").innerHTML="Enter Password";
		}else if(!reg.test(p)){
			document.getElementById("pw").innerHTML="Min 1 uppar,lower,digit & special(8,16)";
		}else{
			document.getElementById("pw").innerHTML="";
		}
	  }
  
  function checkCpassword(){
	  var p1=document.frm.password.value;
	  var p2=document.frm.cpassword.value;
	  if(p2==""){
		  document.getElementById("cp").innerHTML="Enter Password";
		}else if(p2!=p1){
			document.getElementById("cp").innerHTML="pasword & confirm password does not match";
		}else{
			document.getElementById("cp").innerHTML="";
		}
	  }
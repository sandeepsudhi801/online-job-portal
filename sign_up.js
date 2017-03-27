function chk()
{
	var a=document.getElementById("password").value;
	var b=document.getElementById("password1").value;
	var c=document.getElementById("email").value;
	
	
	if(a==b)
	
		{
		return true;
		}
	else
		{
		alert ("password mismatch");
		return false;
		}
}
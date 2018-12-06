$(function() {
	var roleid = sessionStorage.getItem("roleid");
	var name = sessionStorage.getItem("name");
	if(roleid == null) {
		window.location.href = "login.html";
	}
})
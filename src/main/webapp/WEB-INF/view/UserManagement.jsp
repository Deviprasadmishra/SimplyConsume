<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="http://cdn.jsdelivr.net/webjars/bootstrap/3.2.0/css/bootstrap.min.css"
           rel="stylesheet"  />
 
<script src="http://cdn.jsdelivr.net/webjars/jquery/2.1.1/jquery.min.js"></script>
<title>Simply Code</title>

</head>

<body>
	<h2>User Listing</h2>

    <table class="data-user-js table table-striped" >
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
        </tr>
    </table>
    <script type="text/javascript">
	$(document).ready(function() {
		$.ajax({
            url: 'http://localhost:8080/user/',
            type: "GET",
            dataType: "json",
            error: function(jqXHR, textStatus, errorThrown) {
            	alert('Error : '+jqXHR);
            },
            success:function(data, textStatus, jqXHR){

                $.each(data, function(i, users) {

                    $(".data-user-js").append(
                        "<tr><td>" + users.id + "</td>" +
                        "<td>" + users.username + "</td>" +
                        "<td>" + users.address + "</td></tr>");
                });

            }
        });
	});
</script>
</body>
</html>
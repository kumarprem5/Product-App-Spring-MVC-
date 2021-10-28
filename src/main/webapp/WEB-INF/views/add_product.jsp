<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<form action="handler-product" method="post">

					<div class="form-group">
						<label for="exampleInputEmail1">Product Name</label> <input
							name="name" type="text" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter Name">
					</div>
					<div class="form-group">
						<label for="exampleFormControlTextarea1">Product
							Description</label>
						<textarea name="descripton" class="form-control"
							id="exampleFormControlTextarea1" rows="5" placeholder="Enter Description"></textarea>
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Price</label> <input name="price"
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter Price">
					</div>
					<div class="container text-center">
						<a href="${pageContext.request.contextPath
     }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add</button>
					</div>


				</form>
			</div>
		</div>
	</div>


</body>
</html>
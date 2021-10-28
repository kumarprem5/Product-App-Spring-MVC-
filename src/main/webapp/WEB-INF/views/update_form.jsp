<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body background="https://www.google.com/url?sa=i&url=https%3A%2F%2Fframe.work%2F&psig=AOvVaw2-yenB6xA9_nlv2LWjlibZ&ust=1635490701013000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCMj_nefD7PMCFQAAAAAdAAAAABAF">
	<div class="container mt-3">
		<div class="row">
		<h1 class="text-center mb-3">Change Product Details</h1>
			<div class="col-md-6 offset-md-3">
				<form action="${pageContext.request.contextPath }/handler-product" method="post">
                   <input name="id" hidden="id" type="text" value="${product.id}">
					<div class="form-group">
						<label for="exampleInputEmail1">Product Name</label> <input
							value="${product.name }" name="name" type="text" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter Name">
					</div>
					<div class="form-group">
						<label for="exampleFormControlTextarea1">Product
							Description</label>
						<textarea name="descripton"  class="form-control" 
							id="exampleFormControlTextarea1" rows="5" placeholder="Enter Description">${product.descripton }</textarea>
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Price</label> <input name="price"
							type="text" value="${product.price}" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter Price">
					</div> 
					<div class="container text-center">
						<a href="${pageContext.request.contextPath
     }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Update</button>
					</div>


				</form>
			</div>
		</div>
	</div>


</body>
</html>
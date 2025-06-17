<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
</head>
<body>
	<form action="" method="get" class="container mt-4">
    <div class="row">
        <div class="col-md-6">
            <h1 class="mb-4 text-primary">Quản lý sản phẩm</h1>
            <div class="form-group mb-3">
                <label for="name">Tên sản phẩm</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên sản phẩm">
            </div>
            <div class="form-group mb-3">
                <label for="quantity">Số lượng</label>
                <input type="number" class="form-control" id="quantity" name="quantity" placeholder="Nhập số lượng">
            </div>
            <div class="form-group mb-3">
                <label for="price">Giá bán</label>
                <input type="number" class="form-control" id="price" name="price" placeholder="Nhập giá bán">
            </div>
            <button type="submit" class="btn btn-primary">Lưu lại</button>
        </div>
        <div class="col-md-12 mt-4">
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead class="thead-light">
                        <tr>
                            <th>STT</th>
                            <th>Tên Sản Phẩm</th>
                            <th>Số Lượng</th>
                            <th>Giá Bán</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="item" items="${list}" varStatus="count">
                            <tr>
                                <td>${count.index + 1}</td>
                                <td>${item.name}</td>
                                <td>${item.quantity}</td>
                                <td>${item.price}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</form>
	
</body>
</html>
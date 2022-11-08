
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Danh Sách Sản Phẩm</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .container mt-3 {
            margin: 0 auto;
        }
        .table table-dark th td{
            text-align: center;
        }
        .table table-dark td{
            padding-bottom: 5px;
        }
    </style>
</head>
<body>
<div class="container mt-3">
    <h4><a href="/product">Home</a></h4>

    <h2>Giỏ Hàng</h2>

    <table class="table table-dark">
        <thead>
        <tr>
            <th>id</th>
            <th>Tên</th>
            <th>ảnh</th>
            <th>Giá</th>
            <th>Số Lượng</th>
            <th>Xóa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${cart}" var="sp">
            <tr>
                <td>${sp.getId()}</td>
                <td>${sp.getName()}</td>
                <td><img src="${sp.getImage()}" height="200" width="250"></td>
                <td>${sp.getPrice()}</td>
                <td>${sp.getAmount()}</td>
                <td><a type="button" class="btn btn-success" href="/giohang?id=${sp.id}&action=delete">Xóa</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <h3 style="color: yellowgreen">Tổng giá sản phẩm là: ${total}</h3>
</div>

</body>
</html>

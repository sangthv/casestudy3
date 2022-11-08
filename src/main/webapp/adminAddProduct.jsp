
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h2>sản phẩm mới</h2>
    <form action="/them">
        <table>
            <tr>
                <td>nhập ID</td>
                <td><input type="text" name="id" placeholder="nhập id"></td>
            </tr>
            <tr>
                <td>nhập name</td>
                <td><input type="text" name="name" placeholder="nhập tên sản phẩm"></td>
            </tr>
            <tr>
                <td>nhập ảnh</td>
                <td><input type="text" name="img" placeholder="nhập hình ảnh"></td>
            </tr>
            <tr>
                <td>nhập Price</td>
                <td><input type="text" name="price" placeholder="nhập giá"></td>
            </tr> <tr>
            <td>nhập Số Lượng</td>
            <td><input type="text" name="amount" placeholder="nhập so lượng"></td>
        </tr>

        </table>
        <button type="submit"> Submit</button>
    </form>
</div>

</body>
</html>

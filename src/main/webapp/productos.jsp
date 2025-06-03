
<%@ page import="java.util.List" %>
<%@ page import="com.casa.grande.modelo.Producto" %>
<%@ page import="com.casa.grande.modelo.Inventario" %>

<html>
<head>
    <title>Lista de Productos</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #c0392b;
        }
        table {
            margin: 20px auto;
            width: 80%;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px 20px;
            border: 1px solid #ccc;
            text-align: center;
        }
        th {
            background-color: #e74c3c;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .nav {
            text-align: center;
            margin-top: 30px;
        }
        .nav a {
            text-decoration: none;
            color: white;
            background-color: #e67e22;
            padding: 12px 20px;
            border-radius: 5px;
            margin: 5px;
            display: inline-block;
        }
        .nav a:hover {
            background-color: #d35400;
        }
    </style>
</head>
<body>
    <h2>Productos Registrados</h2>

    <table>
        <tr>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Cantidad</th>
        </tr>

        <%
            List<Producto> productos = Inventario.obtenerProductos();
            for (Producto p : productos) {
        %>
        <tr>
            <td><%= p.getNombre() %></td>
            <td><%= p.getPrecio() %></td>
            <td><%= p.getCantidad() %></td>
        </tr>
        <%
            }
        %>
    </table>

    <div class="nav">
        <a href="registrarProducto.jsp">Registrar Otro Producto</a>
        <a href="index.html">Volver al Inicio</a>
    </div>
</body>
</html>

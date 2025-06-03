package com.casa.grande.controlador;

import com.casa.grande.modelo.Producto;
import com.casa.grande.modelo.Inventario;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegistrarProductoServlet", urlPatterns = {"/RegistrarProductoServlet"})
public class RegistrarProductoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Obtener datos del formulario
            String nombre = request.getParameter("nombre");
            double precio = Double.parseDouble(request.getParameter("precio"));
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));

            // Crear producto y agregar al inventario (lista estática)
            Producto nuevo = new Producto(nombre, precio, cantidad);
            Inventario.agregarProducto(nuevo);

            // Redirigir al menú principal o página de productos
            response.sendRedirect("index.html"); // ← Cambia esto a "productos.jsp" si prefieres
        } catch (Exception e) {
            // En caso de error, redirige a una página de error (o muestra un mensaje)
            response.sendRedirect("error.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet para registrar productos en el inventario";
    }
}

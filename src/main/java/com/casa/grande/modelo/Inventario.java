package com.casa.grande.modelo;

import java.util.ArrayList;
import java.util.List;

public class Inventario {
    public static List<Producto> listaProductos = new ArrayList<>();

    public static void agregarProducto(Producto p) {
        listaProductos.add(p);
    }

    public static List<Producto> obtenerProductos() {
        return listaProductos;
    }
}

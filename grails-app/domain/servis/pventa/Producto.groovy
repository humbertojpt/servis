package servis.pventa

class Producto {

    String referencia
    String descripcion
    String precioUnidad
    String precioIva
    int cantidad
    String existencia

    static constraints = {
        referencia blank: false , unique: true
    }
}

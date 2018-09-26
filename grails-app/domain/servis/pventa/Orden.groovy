package servis.pventa

class Orden {

    String norden
    String fecha
    String ntiquete
    String empleado
    String mesa

    static constraints = {
        norden blank: false , unique: true
    }
}

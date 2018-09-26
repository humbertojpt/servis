package servis.pventa

class Cliente {

    String cedula
    String nombre
    String correo
    String telefono

    static constraints = {
        cedula blank: false , unique: true
        nombre blank: false
        correo email: true
    }
}

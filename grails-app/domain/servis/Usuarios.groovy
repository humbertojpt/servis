package servis

class Usuarios {

    String cedula
    String nombre
    String cargo
    String usuario
    String contraseña
    String tipousuario
    String correo
    //BigInteger id
    //BigInteger version

    static constraints = {
        cedula(blank:false,unique:true)
        nombre(blank:false)
        correo(email: true)
        usuario(blank:false,unique: true)
        contraseña(blank: false, unique: false)
        tipousuario(nullable: false, inList: ["USU","ADM"])

    }
}

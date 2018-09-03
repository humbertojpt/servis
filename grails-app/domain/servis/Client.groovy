package servis

class Client {

    String clientid
    String clname
    String age
    String city
    String department
    String address
    String phone
    String mail
    String birthday
    String company
    String servicompany

    // transients
    static transients = ['servicompany']

    static constraints = {
        clientid blank: false , unique: true
        clname blank: false
        mail blank: false , email: true
        phone blank: false
    }
}

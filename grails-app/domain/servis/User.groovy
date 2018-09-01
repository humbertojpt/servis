package servis

class User {
    // time stamps: automatically populated by GORM
    Date dateCreated
    Date lastUpdated

    // properties
    String firstName
    String lastName
    String username
    String password        // plain text, not stored
    String confirm         // plain text, not stored
    //String passwordHashed
    String mail
    String position
    String identification
    String company
    // transients
    static transients = ['confirm']

    // constraints
    static constraints = {
        identification blank: false , unique: true;
        firstName blank:false
        lastName  blank:false
        username  blank:false, size:5..15, matches:/[\S]+/, unique:true
        password  blank:false
        //password  blank:false, size:5..15, matches:/[\S]+/, validator:{ val, obj ->
        //    if (obj.password != obj.confirm)
        //        return 'user.password.dontmatch'
        //}
        mail(email: true)
    }
}

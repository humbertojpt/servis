package servis

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class UserController {

    UserService userService
    public static username

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def register = {
        // new user posts his registration details
        if (request.method == 'POST') {
            // create domain object and assign parameters using data binding
            def u = new User(params)
            u.passwordHashed = u.password.encodeAsPassword()
            if (! u.save()) {
                // validation failed, render registration page again
                return [user:u]
            } else {
                // validate/save ok, store user in session, redirect to homepage
                session.user = u
                redirect(controller:'user')
            }
        }// else if (session.user) {
        // don't allow registration while user is logged in
        //      redirect(controller:'usuarios')
        //  }
    }

    def login = {
        if (request.method == 'POST') {
            def passwordHashed = params.password.encodeAsPassword()
            username = params.username
            def u = User.findByUsernameAndPassword(params.username, params.password)
            if (u) {
                // username and password match -> log in
                session.user = u
                if (u.username.equals("ADMIN")){
                    redirect(controller: 'user')
                }else{
                    if (u.company.equals("QUIRU")){
                        redirect(controller:'navegador')
                    }else{
                        if (u.company.equals("BARBER")){
                            redirect(controller:'barber')
                        }
                    }
                }
            } else {
                flash.message = "Usuario no encontrado"
                redirect(controller:'inicio')
            }
        } else if (session.user) {
            // don't allow user while user is logged in
            redirect(controller:'inicio')
        }
    }

    def muestra() {
        def cedula
        def u = User.executeQuery("select lastName from User where identification = '"+cedula+"' ")
        def usu = u[0]
        render(view:"muestra", model:[userID:usu])
        println "Usuario = ${usu}"
    }

    def logout = {
        session.invalidate()
        redirect url : "/"
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond userService.list(params), model:[userCount: userService.count()]
    }

    def show(Long id) {
        respond userService.get(id)
    }

    def create() {
        respond new User(params)
    }

    def save(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*' { respond user, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond userService.get(id)
    }

    def update(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*'{ respond user, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        userService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

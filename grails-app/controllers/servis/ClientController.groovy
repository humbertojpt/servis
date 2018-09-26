package servis

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ClientController {

    ClientService clientService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def comp

    def index(Integer max) {
        def username = UserController.username
        def u = User.executeQuery("select company from User where username = '"+username+"' ")
        comp = u[0]
        //render(view:"muestra", model:[userID:usu])
        println "company = ${comp}"
            params.max = Math.min(max ?: 10, 100)
            respond clientService.list(params), model:[clientCount: clientService.count()]


    }

    def show(Long id) {
        respond clientService.get(id)
    }

    def create() {
        params.servicompany = comp
        respond new Client(params)
    }

    def save(Client client) {
        if (client == null) {
            notFound()
            return
        }

        try {
            clientService.save(client)
        } catch (ValidationException e) {
            respond client.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'client.label', default: 'Client'), client.id])
                redirect client
            }
            '*' { respond client, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond clientService.get(id)
    }

    def update(Client client) {
        if (client == null) {
            notFound()
            return
        }

        try {
            clientService.save(client)
        } catch (ValidationException e) {
            respond client.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'client.label', default: 'Client'), client.id])
                redirect client
            }
            '*'{ respond client, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        clientService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'client.label', default: 'Client'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'client.label', default: 'Client'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

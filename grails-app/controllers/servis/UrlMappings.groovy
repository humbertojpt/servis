package servis

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }
        "/"(view:"/mainbody")
        "/quiru"(controller: "navegador", view: "/navegador/quiru")
        "/barber"(controller: "barber", view: "/barber/barber")
        "/empresa"(view:"/empresa")
        "/inicio"(view:"/user/inicio")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}

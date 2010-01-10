class UrlMappings {
    static mappings = {
        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }
        "/"(controller: "home", action: "index")
        "/search"(controller: "searchable")
        "500"(view: '/error')
    }
}

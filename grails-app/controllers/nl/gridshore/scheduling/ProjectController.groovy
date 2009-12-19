package nl.gridshore.scheduling

class ProjectController {
    static navigation = [
            group:'tabs',
            order:100,
            title:'project',
            subItems:[
                    [group:'tabs',action:'create',title:'create']
            ]
    ]

    def scaffold = true
}

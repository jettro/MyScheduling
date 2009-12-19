package nl.gridshore.scheduling

class UserController {
    static navigation = [
            group:'tabs',
            order:200,
            title:'user',
            subItems:[
                    [group:'tabs',action:'create',title:'create']
            ]
    ]

    def scaffold = true
}

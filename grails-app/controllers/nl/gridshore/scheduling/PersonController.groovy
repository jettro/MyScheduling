package nl.gridshore.scheduling

class PersonController {

    def scaffold = true

    static navigation = [
            group:'tabs',
            order:150,
            subItems:[
                    [group:'tabs',action:'create']
            ]
    ]

}

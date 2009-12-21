package nl.gridshore.scheduling

import grails.converters.JSON

class PersonController {
    def scheduleItemService

    def scaffold = true

    def planning = {

    }

    def planningDetail = {
        def id = params.id
        if (id) {
            def person = Person.get(id)
            return [scheduleItems:scheduleItemService.obtainScheduleItemsForPerson(person)]
        } else {
            redirect(action: "planning")
        }
    }

    def planningDataAsJSON = {
        response.setHeader("Cache-Control", "no-store")
        def list = []
        def persons = Person.list(params)
        persons.each {
            list << [
                    id:it.id,
                    name:it.name,
                    dataUrl: g.createLink(action:"planningDetail") + "/${it.id}"
            ]
        }
        def data = [
                totalRecords: Person.count(),
                results: list
        ]
        render data as JSON
    }

    static navigation = [
            group: 'tabs',
            order: 150,
            subItems: [
                    [group: 'tabs', action: 'planning'],
                    [group: 'tabs', action: 'create']
            ]
    ]

}

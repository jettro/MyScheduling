package nl.gridshore.scheduling

import grails.converters.JSON
import org.joda.time.LocalDate

class SchedulingController {
    def scheduleItemService;

    def index = {

    }

    def create = {
        def persons = Person.list()
        def projects = Project.list()

        [projects: projects, persons: persons]
    }

    def newScheduleItem = {
        def personName = params.person
        def projectName = params.project
        def nrHours = params.nrhours.toInteger()

        def startDateStr = params.startDate
        def endDateStr = params.endDate
        if (startDateStr && endDateStr) {
            LocalDate startDate = new LocalDate(startDateStr)
            LocalDate endDate = new LocalDate(endDateStr)
            scheduleItemService.createScheduleItems(personName, projectName, nrHours,startDate,endDate)
        } else {
            def weekNr = params.weeknr.toInteger()
            scheduleItemService.createScheduleItem(personName, projectName, weekNr, nrHours)
        }
        flash.message = "New item is created for person ${personName} and project ${projectName}"
        redirect(action: "create")
    }

    def scheduleItemDataAsJSON = {
        def list = []
        def allItems = ScheduleItem.list(params)
        response.setHeader("Cache-Control", "no-store")
        allItems.each {
            list << [
                id:it.id,
                person:it.person.toString(),
                project:it.project.toString(),
                weekNr:it.weekNr,
                nrHours:it.nrHours
            ]
        }
        def data = [
                totalRecords: ScheduleItem.count(),
                results: list
        ]
        render data as JSON
    }

    static navigation = [group: 'tabs', order: 40, action: 'index',
            subItems: [
                    [group: 'tabs', action: 'create']
            ]
    ]
}

package nl.gridshore.scheduling

import org.joda.time.LocalDate
import org.joda.time.Period

class ScheduleItemService {

    boolean transactional = true

    def obtainScheduleItemsForPerson(Person person) {
        def items = ScheduleItem.findAllByPerson(person)
        if (!items) {
            items = []
        }
        return items
    }

    def createScheduleItems(String personName, String projectName,int numberHours,LocalDate startDate, LocalDate endDate) {
        // determine the start and end date
        def project = Project.findByName(projectName)
        def person = Person.findByName(personName)
        // TODO jettro : denk aan probleem met weken over de jaargrens heen
        // TODO jettro : wellicht een warning als het te lang is??
        def currentDate = startDate
        for (int i=startDate.weekOfWeekyear;i<endDate.weekOfWeekyear;i++) {
            currentDate = currentDate + Period.weeks(1)
            doCreateScheduleItem(person, project, i, numberHours)
        }
    }

    def createScheduleItem(String personName, String projectName, int weekNr, int numberHours) {
        def project = Project.findByName(projectName)
        def person = Person.findByName(personName)
        doCreateScheduleItem(person,project,weekNr,numberHours)
    }

    def createScheduleItem(long personId, long projectId, int weekNr, int numberHours) {
        def project = Project.get(projectId)
        def person = Person.get(personId)
        doCreateScheduleItem(person,project,weekNr,numberHours)
    }

    private def doCreateScheduleItem(Person person, Project project, int weekNr, int numberHours) {
        def scheduleItem = new ScheduleItem(
                person: person,
                project: project,
                weekNr: weekNr,
                nrHours: numberHours)
        scheduleItem.save()
    }
}

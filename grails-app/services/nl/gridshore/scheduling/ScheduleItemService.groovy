package nl.gridshore.scheduling

class ScheduleItemService {

    boolean transactional = true

    def createScheduleItems(long personId, long projectId,int numberHours,int weekNr,
                            Date startDate, Date endDate) {
        // determine the start and end date
        
        doCreateScheduleItem(person, project, weekNr, numberHours)
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

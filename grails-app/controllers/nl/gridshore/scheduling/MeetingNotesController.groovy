package nl.gridshore.scheduling

class MeetingNotesController {
    def scaffold = MeetingNotes

    static navigation = [
            group: 'tabs',
            order: 110,
            subItems: [
                    [group: 'tabs', action: 'create']
            ]
    ]

    def feed = {
        render(feedType: "rss", feedVersion: "2.0") {
            title = "Meeting Notes feed"
            link = "${grailsApplication.config.grails.serverURL}/meetingNotes/feed"
            description = "All meeting notes that have been written per week"
            MeetingNotes.list().each() {note ->
                entry("weekNr : ${note.weekNr}") {
                    link = "${grailsApplication.config.grails.serverURL}/meetingNotes/show/${note.id}"
                    "Meeting notes for week number ${note.weekNr} by ${note.user.userRealName}" // return the content
                }
            }
        }
    }
}

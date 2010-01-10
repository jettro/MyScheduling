package nl.gridshore.scheduling

class MeetingNotes {
    int weekNr
    User user
    String notes

    static constraints = {
        notes(blank: false, widget: "textarea")
    }

    static mapping = {
        notes type: "text"
    }

    static searchable = true

    String toString() {
        return "Week number : ${weekNr}"
    }
}

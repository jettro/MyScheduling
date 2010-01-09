package nl.gridshore.scheduling

class MeetingNotesController {
    def scaffold = true

    static navigation = [
            group: 'tabs',
            order: 110,
            subItems: [
                    [group: 'tabs', action: 'create']
            ]
    ]
}

package nl.gridshore.scheduling.sitemenu

class ContactController {
    static navigation = [group: 'sitemenu', order: 20]
    def index = {}

    def mail = {
        if (params.yourname) {
            sendMail {
                to "jettro@coenradie.com"
                subject "Contact Form"
                html g.render(template: "contactMailTemplate",
                        model:[remark:params.remark,yourname:params.yourname,yourmail:params.yourmail])
            }
            flash.message = "Thank you for your remark, will get back to you if desired!"
        } else {
            flash.error = "Could not send a message, no name!"
        }
        redirect (controller:"contact")
    }
}

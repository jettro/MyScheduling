package nl.gridshore.scheduling

class User {
    String username
    // TODO find out if it is possible to use sha1 encoding of the password
    String password

    static constraints = {
    }

    String toString() {
        return username
    }

}

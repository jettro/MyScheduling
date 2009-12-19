package nl.gridshore.scheduling

class Project {
    String name

    static constraints = {
        name(blank:false, maxSize:100, minSize:3)
    }

    String toString() {
        return name
    }
}

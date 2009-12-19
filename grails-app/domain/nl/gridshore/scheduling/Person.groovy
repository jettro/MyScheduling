package nl.gridshore.scheduling

class Person {
    String name
    float partTimeFactor

    static hasMany = [projects:Project]

    static constraints = {
        name (blank:false, minSize:2, maxSize:25)
        partTimeFactor(min:0f,max:1f)
    }

    String toString() {
        return name
    }
}

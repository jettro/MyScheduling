import nl.gridshore.scheduling.Person
import nl.gridshore.scheduling.Project

class BootStrap {

     def init = { servletContext ->
         def jettro = new Person(name:'Jettro',partTimeFactor:1)
         jettro.save()
         def roberto = new Person(name:'Roberto',partTimeFactor:1)
         roberto.save()
         def allard = new Person(name:'Allard',partTimeFactor:1)
         allard.save()
         def bram = new Person(name:'Bram',partTimeFactor:0.8)
         bram.save()

         def cqrs4j = new Project(name:'CQRS4j')
         cqrs4j.save()
         def myscheduling = new Project(name:'MyScheduling')
         myscheduling.save()
         def newsfeed = new Project(name:'news-feed')
         newsfeed.save()

         jettro.addToProjects myscheduling
         jettro.addToProjects newsfeed
         jettro.addToProjects cqrs4j
         allard.addToProjects cqrs4j
     }
     def destroy = {
     }
} 
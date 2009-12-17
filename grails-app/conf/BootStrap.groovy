import nl.gridshore.scheduling.Person

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
     }
     def destroy = {
     }
} 
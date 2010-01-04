import nl.gridshore.scheduling.Person
import nl.gridshore.scheduling.Project
import nl.gridshore.scheduling.Role
import nl.gridshore.scheduling.Requestmap
import nl.gridshore.scheduling.User

class BootStrap {

    def authenticateService

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
         roberto.addToProjects newsfeed

         // security
         // roles
         def roleAdmin = new Role(authority:"ROLE_ADMIN",description:"admin")
         roleAdmin.save()
         def roleSysAdmin = new Role(authority:"ROLE_SYSADMIN",description:"sysadmin")
         roleSysAdmin.save()

         // request maps
         def securePerson = new Requestmap(url:"/person/**",configAttribute:"ROLE_ADMIN")
         securePerson.save()
         def secureProject = new Requestmap(url:"/project/**",configAttribute:"ROLE_ADMIN")
         secureProject.save()
         def secureUser = new Requestmap(url:"/user/**",configAttribute:"ROLE_ADMIN")
         secureUser.save()
         def secureRole = new Requestmap(url:"/role/**",configAttribute:"ROLE_SYSADMIN")
         secureRole.save()
         def secureRequestmap = new Requestmap(url:"/requestmap/**",configAttribute:"ROLE_SYSADMIN")
         secureRequestmap.save()

         // users
         def passwdAdmin = authenticateService.encodePassword('admin')
         def admin = new User(
                 username:"admin",
                 userRealName:"Administrator",
                 passwd:passwdAdmin,
                 enabled:true,
                 email:"admin@myscheduling",
                 emailShow:true,
                 description:'Can be used to do administrative tasks')
         admin.save()
         admin.addToAuthorities roleAdmin

         def passwdSysadmin = authenticateService.encodePassword('sysadmin')
         def sysadmin = new User(
                 username:"sysadmin",
                 userRealName:"System Administrator",
                 passwd:passwdSysadmin,
                 enabled:true,
                 email:"sysadmin@myscheduling",
                 emailShow:true,
                 description:'Can be used to do system administrative tasks')
         sysadmin.save()
         sysadmin.addToAuthorities roleAdmin
         sysadmin.addToAuthorities roleSysAdmin
     }
     def destroy = {
     }
} 
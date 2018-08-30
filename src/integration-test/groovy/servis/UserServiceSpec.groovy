package servis

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Shared
import spock.lang.Specification
import org.hibernate.SessionFactory


@Integration
@Rollback
class UserServiceSpec extends Specification {

    UserService userService
    SessionFactory sessionFactory
    //def user

    void setupData() {

        // TODO: Populate valid domain instances and return a valid ID
        new User(firstName:'h',lastName: 'p', username: 'humbe',passwordHashed:'jLIjfQZ5yojbZGTqxg2pY0VROWQ=',
                mail: 'humbe@gmail.com',position:'inge',identification: '11111',company: 'servis')
        //user = User(username: 'humbe2').save(flush: true, failOnError: true)
        //new User(...).save(flush: true, failOnError: true)
        //new User(...).save(flush: true, failOnError: true)
        //user.save(flush: true, failOnError: true)

        //assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //user.id
    }

    void "test get"() {
        given:
        setupData()
        expect:
        userService.get(1) != null
    }
}

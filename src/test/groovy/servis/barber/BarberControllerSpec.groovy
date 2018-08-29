package servis.barber

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class BarberControllerSpec extends Specification implements ControllerUnitTest <BarberController> {

    def setup() {
    }

    def cleanup() {
    }

    void "test barber"() {
        when:
        controller.barber()

        then:
        view == '/barber/barber'
    }
}

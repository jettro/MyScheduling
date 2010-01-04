package nl.gridshore.scheduling
/**
 * Logout Controller (Example).
 */
class LogoutController {
    static navigation = [group:'sitemenu',order:30]

	/**
	 * Index action. Redirects to the Spring security logout uri.
	 */
	def index = {
		// TODO  put any pre-logout code here
		redirect(uri: '/j_spring_security_logout')
	}
}

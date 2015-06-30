Feature: Inactivate user account
	In order to does not hava an account anymore
	As an User
	I want to inactivate my profile.

	Scenario:
	    Given I am a logged in as "user", "mymail@mail.com" with password "mypassword"
	    And I am on the "edit" Page
		When I press the "Inactivate" link
		Then I want to see 'Inactive account'


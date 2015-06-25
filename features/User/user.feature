Feature: Create an user account
	In order to use all the functions of the system
	As an user
	I want to sing up

	Scenario: 
	  Given I am in the 'Create account' page
	  When I fill in "username" with "firstuser" 
	  And I fill the "email" with "mymail@mail.com"
	  And I fill one "password" with "mypassword" 
	  And I fill "password_confirm" with "password" 
	  And I press "Sing Up"
	  Then an account with the username "firstuser" should exist
Feature: Send a Suggestion

	In order to encourage improvements and give new features ideas
	As an user
	I want to send a suggestions about the website for the development team

	Scenario: Sending a valid suggestion
		Given I am on the contact page
		When I write "my name", "email" and "suggestion text"
		And I press "Send Message"
		Then It should send the suggestion to the system
		And should show a thank you page
		
Feature: Edit perfil
	In order to update my personal information
	As an User
	I want to edit my data


  Scenario:
    Given I am a logged in as "teste" with password "secret"
    And I am in the 'Edit Profile' Page
    When I edit my "e-mail" with "mail@mail.com"
    And I press the "Log in" Button
    Then my profile account email should be "mymail@mail.com"
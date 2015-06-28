Feature: Edit perfil
	In order to update my personal information
	As an User
	I want to edit my data


  Scenario:
    Given I am a logged in as "user", "mymail@mail.com" with password "mypassword"
    And I am on the "edit" Page
    When I edit my "e-mail" with "mail@mail.com"
    And I press the "Save" Button
    Then my profile account email should be "mymail@mail.com"
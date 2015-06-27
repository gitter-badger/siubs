Feature: Evaluate an UBS

	In order to show my satisfaction about an UBS
	As an user
	I want to evaluate a particular UBS

	Scenario: Seaching an ubs with an invalid name
    Given There is a new UBS
	  When I am on the ubs profile page
	  And I click the "Avaliar" button
	  Then There should be a new evaluation for the UBS
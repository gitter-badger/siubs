Feature: Search for an UBS

	In order to get the main information about the ubs
	As an user
	I want to search an UBS by name

	Scenario: Seaching an ubs with an invalid name
	  Given I am on the search page
	  When I write "wrong name"
	  And I press "Search"
	  Then I want to see a message "Unidade Básica de Saúde não encontrada"

	Scenario: Seaching an ubs with a valid name
	  Given I am on the search page
	  When I write "US OSWALDO DE SOUZA"
	  And I press "Search"
	  Then I want to see the the ubs name




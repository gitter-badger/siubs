Feature: Parse
  In order persist the datas on the database
  As a developer
  I want to upload a file

  Scenario: Uploading a file
    Given I am on the parse page
    When I press "Importar"
    Then The file "ubs.csv" sould exits

Feature: Parse
  In order persist the datas on the database
  As a developer
  I want to upload a file

  Scenario: Uploading a valid file
    Given I am on the new parse page
    When I upload a csv file
    And I press importar button
    Then the number of ubs should change
    And I should see the file upload page again

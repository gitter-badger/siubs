Feature: Comment about an UBS

  In order to get visibility of my opinion
  As a user
  I want to comment about an UBS

  Scenario:
    Given on any "UBS" profile page
    And I have a "facebook" account
    And the permission to post a "comment"
    When I write a comment
    And I press "Send" of facebook
    Then it should show my comment on the list

@wip
Feature: Perform a calculation
  As a user
  In order to find the result of a mathematical operation
  I need to be able to ask the computer to perform the math

  Scenario: A user requests a math operation be performed
    Given I am on the calculator page
    When I fill in "Input" with "5*3+1+6/2+9*100"
    And I click "="
    Then I should see "919" within the result area

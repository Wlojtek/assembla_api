@api
Feature: Portfolio Tasks
  Background:
    Given I have "Assembla::Client::Portfolio::Tasks" instance
    And I have a space
    And I have a task

  Scenario: List
    When I make request with method list
    Then the response status should be 200

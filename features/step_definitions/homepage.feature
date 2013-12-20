Feature: Viewing the homepage

  Background:
    Given I am on the homepage

  Scenario: As a user I want to view the homepage
    Then I should see "web manage"

  Scenario: As a user I want have the ability to navigation the site
    Then I should see "Teams"
    And I should see "Projects"
    And I should see "Sprints"
    And I should see "Current Sprints"




Feature: Viewing, editing and creating sprints

  Scenario: As I user I want to view current sprints
    Given I am on the homepage

    And the following sprints
      | title | summary | start_date | in_progress | exp_end_date |
      | sprint one  | this is a test sprint titled one | 10-03-1971 | true | 10-03-1971 |
      | sprint two  | this is a test sprint titled two | 10-03-1973 | false | 10-03-1973 |

    And I follow "Sprints"
    Then I should see "Current Sprints"
    And I should see "sprint one"
    And I should see "this is a test sprint titled one"
    And I should see "10/03/1971"
    And I should see "10/03/1973"
    And I should see "true"
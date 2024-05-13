@Regression
Feature: Assignment API

  Background: HelpDesk Login Authentication
    Given Set endpoint "Login" and method "post" and payload "login"
    Then Verify login Status code 200

  Scenario Outline: To Validate Assignment GET Api without Params
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint   | Method | Expected_status | Description        |
      | Assignment | get    | 200             | Get all Assignment |

  Scenario Outline: To Validate Assignment GET Api with Params
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint        | Method | Expected_status | Description                      |
      | AssignmentParam | get    | 200             | Get info of the Assignment group |

  Scenario Outline: To Validate Assignment Api - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | Method | Expected_status | payload         | Description                      |
      | AssignmentPost | post   | 200             | Assignment_POST | Used to add new assignment group |

#  Scenario: To Validate Assignment Api - PUT
#    Given Set endpoint and method and Description and payload "AssignmentDeletePut" and "put" and "Assignment_PUT" and "<Description>"
#    Then Verify Status code 200
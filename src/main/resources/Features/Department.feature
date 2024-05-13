@Regression
Feature: Department API

  Background: HelpDesk Login Authentication
    Given Set endpoint "Login" and method "post" and payload "login"
    Then Verify login Status code 200

  Scenario Outline: To Validate Department GET Api
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint   | Method | Expected_status | Description                  |
      | Department | get    | 200             | Get data for all departments |

  Scenario Outline: To Validate Department GET Api for Support
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint        | Method | Expected_status | Description                                 |
      | DepartmentParam | get    | 200             | Get data for all the support of departments |

  Scenario Outline: To Validate Department PUT Api - InActive
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint           | Method | Expected_status | Description             |
      | DepartmentInactive | put    | 200             | Used to edit department |

  Scenario Outline: To Validate Department PUT Api - Active
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint         | Method | Expected_status | Description             |
      | DepartmentActive | put    | 200             | Used to edit department |


#
#  Scenario Outline: To Validate ADD Department Api - POST
#    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
#    Then Verify Status code <Expected_status>
#    Examples:
#      | endpoint      | Method | Expected_status | payload            | Description             |
#      | DepartmentAdd | post   | 200             | DepartmentPost_ADD | Used to add Departments |



#  Not Required
#  Scenario Outline: To Validate DELETE Department PUT Api
#    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
#    Then Verify Status code <Expected_status>
#    Examples:
#      | endpoint         | Method | Expected_status | Description               |
#      | DepartmentDelete | put    | 200             | Used to delete department |
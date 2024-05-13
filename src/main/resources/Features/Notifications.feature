@Regression
Feature: Notifications API

  Background: HelpDesk Login Authentication
    Given Set endpoint "Login" and method "post" and payload "login"
    Then Verify login Status code 200

  Scenario Outline: To Validate Notifications GET Api without Params
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint     | Method | Expected_status | Description          |
      | Notification | get    | 200             | Get all Notification |

  Scenario Outline: To Validate Notifications GET Api with Params
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status | Description          |
      | Notification2 | get    | 200             | Get all Notification |


  Scenario Outline: To Validate Notifications Api - PUT
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint        | Method | Expected_status | Description                   |
      | NotificationPut | put    | 200             | Used to Read/All Notification |


  Scenario Outline: To Validate Notifications Api with ID - PUT
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint          | Method | Expected_status | Description                        |
      | NotificationPutID | put    | 200             | Used to Read selected Notification |
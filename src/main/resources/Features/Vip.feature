@Regression
Feature: Vip API

  Background: HelpDesk Login Authentication
    Given Set endpoint "Login" and method "post" and payload "login"
    Then Verify login Status code 200

  Scenario Outline: To Validate VIP Api
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | Description                |
      | VIP      | get    | 200             | Get data for VIP candidate |

  Scenario Outline: To Validate Add VIP Api - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | payload | Description     |
      | VIP2     | post   | 200             | VIP     | Used to add VIP |

  Scenario Outline: To Validate Delete VIP Api - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | payload   | Description        |
      | VIP2     | post   | 200             | VipDelete | Used to delete VIP |
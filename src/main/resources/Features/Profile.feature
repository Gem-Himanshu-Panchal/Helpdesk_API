@Regression
Feature: Profile API

  Background: HelpDesk Login Authentication
    Given Set endpoint "Login" and method "post" and payload "login"
    Then Verify login Status code 200

  Scenario Outline: To Validate Profile GET Api
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | Description                        |
      | Profile  | get    | 200             | Get the caller profile information |

  Scenario Outline: To Validate Profile-info GET Api
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | Description                        |
      | Profile2 | get    | 200             | Get the caller profile information |

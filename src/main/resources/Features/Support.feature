@Regression
Feature: Support API

  Background: HelpDesk Login Authentication
    Given Set endpoint "Login" and method "post" and payload "login"
    Then Verify login Status code 200

  Scenario Outline: To Validate Support GET - Api
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | Description          |
      | Support  | get    | 200             | Get all Support List |

  Scenario Outline: To Validate Support Api - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status | payload      | Description           |
      | SupportPost | post   | 200             | Support_post | Used to add a Support |

  Scenario Outline: To Validate Support Api - PUT
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint   | Method | Expected_status | payload     | Description                    |
      | SupportPut | put    | 200             | Support_PUT | Used to edit a support details |


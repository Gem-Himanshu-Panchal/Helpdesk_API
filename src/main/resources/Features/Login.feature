@Regression
Feature: HelpDesk Login Api

  Scenario Outline: HelpDesk, Login User
    Given Set endpoint "<endpoint>" and method "<method>" and payload "<payload>"
    Then Verify Status code <expectedStatus>
    Examples:
      | endpoint | method | expectedStatus | payload |
      | Login    | post   | 200            | login   |


  Scenario Outline: HelpDesk, Login User with Wrong Credentials
    Given Set credentials endpoint and method and SampleName "<endpoint>" and "<method>" and "<payload>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | method | Expected_status | payload             |
      | Login    | post   | 400             | loginInvalid_sample |
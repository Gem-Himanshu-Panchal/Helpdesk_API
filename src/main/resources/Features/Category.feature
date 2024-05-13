@Regression
Feature: Category API

  Background: HelpDesk Login Authentication
    Given Set endpoint "Login" and method "post" and payload "login"
    Then Verify login Status code 200

  Scenario Outline: To validate Category GET Api without Params
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | Description          |
      | Category | get    | 200             | Get all Support List |

  Scenario Outline: To validate Category GET Api with Params for Incident
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint              | Method | Expected_status | Description          |
      | CategoryParamIncident | get    | 200             | Get all Support List |

  Scenario Outline: To validate Category GET Api with Params for Request
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint             | Method | Expected_status | Description          |
      | CategoryParamRequest | get    | 200             | Get all Support List |

  Scenario Outline: To validate Category GET Api with Params for Incident ticket IT department
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                | Method | Expected_status | Description          |
      | CategoryParamIncidentIT | get    | 200             | Get all Support List |

  Scenario Outline: To validate Category GET Api with Params for Request ticket IT department
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint               | Method | Expected_status | Description          |
      | CategoryParamRequestIT | get    | 200             | Get all Support List |

  Scenario Outline: To validate Category GET Api with Params for Incident ticket Accounts department
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                       | Method | Expected_status | Description          |
      | CategoryParamsIncidentAccounts | get    | 200             | Get all Support List |

  Scenario Outline: To validate Category GET Api with Params for Request ticket Accounts department
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                      | Method | Expected_status | Description          |
      | CategoryParamsRequestAccounts | get    | 200             | Get all Support List |

  Scenario Outline: To validate Category GET Api with Params for Incident ticket HR department
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                 | Method | Expected_status | Description          |
      | CategoryParamsIncidentHR | get    | 200             | Get all Support List |

  Scenario Outline: To validate Category GET Api with Params for Request ticket HR department
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                | Method | Expected_status | Description          |
      | CategoryParamsRequestHR | get    | 200             | Get all Support List |

  Scenario Outline: To validate Category GET Api with Params for Incident ticket Admin department
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                    | Method | Expected_status | Description          |
      | CategoryParamsIncidentAdmin | get    | 200             | Get all Support List |

  Scenario Outline: To validate Category GET Api with Params for Request ticket Admin department
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                   | Method | Expected_status | Description          |
      | CategoryParamsRequestAdmin | get    | 200             | Get all Support List |

  Scenario Outline: To validate Category GET Api with Params to get the SubCategory
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint          | Method | Expected_status | Description                                              |
      | SubCategoryParams | get    | 200             | Used to get all the SubCategory on the basis of category |

  Scenario Outline: To validate Category GET Api without Params to get the SubCategory
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status | Description                                              |
      | SubCategory | get    | 200             | Used to get all the SubCategory on the basis of category |

  Scenario Outline: To Validate Category Api - POST - To add new Category and To delete the Category
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    When Set endpoint and method and Description and payload "updateCategory" and "post" and "UpdateCategory_POST" and "Used to edit category (Delete)" and new
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status | payload          | Description          |
      | addCategory | post   | 200             | AddCategory_POST | Used to Add Category |

  Scenario Outline: To Validate Category Api - POST - To add new Category and To Edit the Category
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    When Set endpoint and method and Description and payload "updateCategory" and "post" and "EditCategory_POST" and "Used to Edit Category Name" and new
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status | payload          | Description          |
      | addCategory | post   | 200             | AddCategory_POST | Used to Add Category |

  Scenario Outline: To Validate Category Api - POST - To Add SubCategory
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Given Set endpoint and method and Description and payload "addMultipleSubCategory" and "post" and "AddSubCategory_POST" and "Used to Add SubCategory" and new
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status | payload          | Description          |
      | addCategory | post   | 200             | AddCategory_POST | Used to Add Category |

#PUT API On-Hold
#add-sub-category On-Hold


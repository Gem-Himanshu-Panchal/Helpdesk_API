@Regression
Feature: Notifications API

  Background: HelpDesk Login Authentication
    Given Set endpoint "Login" and method "post" and payload "login"
    Then Verify login Status code 200

  Scenario Outline: To Validate Tickets GET Api without Params - To List Tickets
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status | Description          |
      | listTickets | get    | 200             | Used to List Tickets |

  Scenario Outline: To Validate Tickets GET Api with Params - To List Tickets
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint          | Method | Expected_status | Description                           |
      | listTicketsParams | get    | 200             | Used to List Tickets including params |

  Scenario Outline: To Validate Add Comment Api - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint   | Method | Expected_status | payload         | Description                      |
      | addComment | post   | 200             | AddComment_POST | Used to add comment for TicketID |

  Scenario Outline: To Validate Add Internal Note Api - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint   | Method | Expected_status | payload          | Description                                    |
      | addComment | post   | 200             | AddInternal_POST | Used to add Internal Note comment for TicketID |

  Scenario Outline: To Validate Tickets GET Api with Params - The Ticket created history of user
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint          | Method | Expected_status | Description                                    |
      | userTicketHistory | get    | 200             | Used to get the Ticket created history of user |

  Scenario Outline: To Validate Tickets GET Api with Params - Used to get all the Ticket details including timelines
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status | Description                                            |
      | ticketDetails | get    | 200             | Used to get all the Ticket details including timelines |

  Scenario Outline: To Validate Tickets GET Api with Params - Used to get comments for Ticket ID
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | Method | Expected_status | Description                        |
      | ticketComments | get    | 200             | Used to get comments for Ticket ID |

  Scenario Outline: To Validate Tickets GET Api with Params - Used to get all the Audit Logs including system changes
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint        | Method | Expected_status | Description                                             |
      | ticketAuditLogs | get    | 200             | Used to get all the Audit Logs including system changes |

  Scenario Outline: To Validate Tickets PUT Api with Params - Used to Search Data
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint         | Method | Expected_status | Description         |
      | searchTicketData | put    | 200             | Used to Search Data |

  Scenario Outline: To Validate Tickets PUT Api with Params - Used to Cancel the Ticket
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint     | Method | Expected_status | payload          | Description               |
      | cancelTicket | put    | 200             | TicketCancel_PUT | Used to Cancel the Ticket |

  Scenario Outline: To Validate Tickets PUT Api without Params - Used to get all Ticket for Super Admin
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint        | Method | Expected_status | Description                            |
      | allTicketsAdmin | put    | 200             | Used to get all Ticket for Super Admin |

  Scenario Outline: To Validate Tickets PUT Api - Used to Assign tickets to Support
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status | payload          | Description                       |
      | assignTickets | put    | 200             | TicketAssign_PUT | Used to Assign tickets to Support |

######
  Scenario Outline: To Validate Create New Incident Ticket API - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint           | Method | Expected_status | payload           | Description           |
      | createNewINCTicket | post   | 200             | NewINCTicket_POST | Used to Create Ticket |

  Scenario Outline: To Validate Create New Request Ticket API - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint           | Method | Expected_status | payload           | Description           |
      | createNewREQTicket | post   | 200             | NewREQTicket_POST | Used to Create Ticket |

  Scenario Outline: To Validate Create New Request Ticket with Unit API - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint           | Method | Expected_status | payload                | Description           |
      | createNewREQTicket | post   | 200             | NewREQTicket_Unit_POST | Used to Create Ticket |

#  Scenario Outline: To Validate Tickets PUT Api with Params - Used to Assign tickets to Support
#    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
#    Then Verify Status code <Expected_status>
#    Examples:
#      | endpoint      | Method | Expected_status | payload          | Description                       |
#      | assignTickets | put    | 200             | TicketAssign_PUT | Used to Assign tickets to Support |

  Scenario Outline: To Validate Tickets PUT Api with Params - Used to Update Ticket details
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint     | Method | Expected_status | payload          | Description                   |
      | updateTicket | put    | 200             | UpdateTicket_PUT | Used to Update Ticket details |

  Scenario Outline: To Validate Create New Ticket Support API - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint               | Method | Expected_status | payload               | Description                      |
      | createNewTicketSupport | post   | 200             | NewTicketSupport_POST | Used to Create Ticket by Support |

  Scenario Outline: To Validate Create New Ticket Support API with Unit API - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint               | Method | Expected_status | payload                    | Description                      |
      | createNewTicketSupport | post   | 200             | NewTicketSupport_Unit_POST | Used to Create Ticket by Support |

  Scenario Outline: To Validate Tickets PUT Api without Params - Used to get reviewed (approved or rejected) ticket
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint        | Method | Expected_status | Description                                        |
      | reviewedTickets | put    | 200             | Used to get reviewed (approved or rejected) ticket |

  Scenario Outline: To Validate Impact and Priority API - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint          | Method | Expected_status | payload                   | Description                                                          |
      | editImpactUrgency | post   | 200             | Edit_Impact_Priority_POST | Used to edit Ticket Impact and Priority by SuperAdmin and L3 Support |

  Scenario Outline: To Validate ReOpen Ticket API - POST
    Given Set endpoint and method and Description and payload "createNewINCTicket" and "post" and "NewINCTicket_POST" and "Used to Create Ticket"
    Then Verify Status code <Expected_status>
    When Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint     | Method | Expected_status | payload          | Description               |
      | reopenTicket | put    | 200             | ReopenTicket_PUT | Used to Reopen the Ticket |

  Scenario Outline: To Validate Tickets GET Api with Params - Used to get approval pending tickets
    Given Set endpoint and method and Description "<endpoint>" and "<Method>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint               | Method | Expected_status | Description                          |
      | approvalPendingTickets | get    | 200             | Used to get approval pending tickets |

    @fail
  Scenario Outline: To Validate Approve Tickets through Email API - POST
    Given Set endpoint and method and Description and payload "createNewREQTicket" and "post" and "ReqTicketQuickApproval" and "Used to Create Ticket"
    Then Verify Status code <Expected_status>
    When Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status | payload            | Description                                    |
      | quickApproval | post   | 200             | QuickApproval_POST | Used to approve  request tickets through Email |

    @fail
  Scenario Outline: To Validate Approve Request Tickets API - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint          | Method | Expected_status | payload                | Description                     |
      | approveReqTickets | post   | 200             | ApproveReqTickets_POST | Used to approve request tickets |

  Scenario Outline: To Validate Document Upload API - POST
    Given Set endpoint and method and Description and payload "<endpoint>" and "<Method>" and "<payload>" and "<Description>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | Method | Expected_status | payload             | Description             |
      | documentUpload | post   | 200             | DocumentUpload_POST | Used to upload document |
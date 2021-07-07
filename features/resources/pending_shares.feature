Feature: Pending Shares

Scenario: Being added as a collaborator to a resource (Pending Shares enabled)
  Given I'm added as a collaborator to a resource as in 'Feature: Adding collaborators to a resource'
#   When the option 'Automatically accept new incoming local user shares' is disabled
   Then the resource is not yet located in my file hierarchy
#   Then I am notified about the invite and can choose to 'accept' or 'decline' it
    And the resource appears in 'Feature: Overview of received shared resources' with state 'Pending'
   When I decline the resource
#   Then the notification is dismissed
   Then the state of the invite changes to 'declined'
   When I accept the resource
#   Then the notification is dismissed
   Then the state of the invite changes to 'accepted'
    And the resource is located in the folder configured via the 'share_folder' option
    And I can access it as in 'Feature: Accessing a resource as a collaborator'

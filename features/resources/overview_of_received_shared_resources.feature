Feature: Overview of received shared resources

Scenario: Listing received shared resources
  Given I'm logged in as a user
   When I have collaborator invites (accepted/pending/declined)
   Then I can list these resources
    And I see the name of the resources
    And I see file type icons or thumbnails
    And I can recognize the initiator of the invite
    And I see the time since the invite has been initiated
    And I see the state of the invite (accepted/pending/declined)
    And I can add these resources to my personal space as in 'Scenario: Adding a shared resource to a user's personal space'
    And I can remove these resources from my personal space as in 'Scenario: Removing a shared resource from a user's personal space'
    And I can sort the list (ascending/descending) by name, state and time

Scenario: Adding a shared resource to a user's personal space
  Given I'm a logged in user
   When I have pending/declined collaborator invites
   Then I can add such a resource to my personal space
    And the state of the invite changes to 'accepted'
    And the resource is located in the folder configured via the 'share_folder' option
    And I can access it as in 'Feature: Accessing a resource as a collaborator'

Scenario: Removing a shared resource from a user's personal space
  Given I'm a logged in user
   When I have accepted collaborator invites
   Then I can remove such a resource from my personal space
    And the state of the invite changes to 'declined'
    And the resource is not located in my hierarchy any more
    And I can't access it any more

Feature: Overview of received shared resources

Scenario: Listing received shared resources
  GIVEN I'm logged in as a user
   WHEN I have accepted collaborator invites
     OR I have pending collaborator invites as in 'Scenario: Being added as a collaborator to a resource (Pending Shares enabled)'
     OR I have shared resources that I removed from my personal space previously as in 'Feature: Removing a shared resource from a user's personal space'
   THEN I can list these resources
    AND I see the name of the resources
    AND I see file type icons or thumbnails
    AND I can recognize the initiator of the invite
    AND I see the time since the invite has been initiated
    AND I see the state of the invite (accepted/pending/declined)
    AND I can add these resources to my personal space as in 'Scenario: Adding a shared resource to a user's personal space'
    AND I can remove these resources from my personal space as in 'Scenario: Removing a shared resource from a user's personal space'
    AND I can sort the list (ascending/descending) by name, state and time

Scenario: Adding a shared resource to a user's personal space
  GIVEN I'm a logged in user
   WHEN I have pending collaborator invites as in 'Scenario: Being added as a collaborator to a resource (Pending Shares enabled)'
     OR I have declined collaborator invites
   THEN I can add such a resource to my personal space
    AND the state of the invite changes to 'accepted'
    AND the resource is located in the folder configured via the 'share_folder' option
    AND I can access it as in 'Feature: Accessing a resource as a collaborator'

Scenario: Removing a shared resource from a user's personal space
  GIVEN I'm a logged in user
   WHEN I have accepted collaborator invites
   THEN I can remove such a resource from my personal space
    AND the state of the invite changes to 'declined'
    AND the resource is not located in my hierarchy any more
    AND I can't access it any more

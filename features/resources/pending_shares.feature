Feature: Pending Shares

Scenario: Being added as a collaborator to a resource (Pending Shares enabled)
  GIVEN I'm added as a collaborator to a resource as in 'Feature: Adding collaborators to a resource'
#   WHEN the option 'Automatically accept new incoming local user shares' is disabled
   THEN the resource is not yet located in my file hierarchy
#   THEN I am notified about the invite and can choose to accept or decline the resource
    AND the resource appears in 'Feature: Overview of received shared resources' with state 'Pending'
   WHEN I decline the resource
#   THEN the notification is dismissed
   THEN the resource stays in pending/declined state
   WHEN I accept the resource
#   THEN the notification is dismissed
   THEN the resource is located in the folder configured via the 'share_folder' option
    AND I can access it as in 'Feature: Accessing a resource as a collaborator'

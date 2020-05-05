Feature: Accessing a resource as a collaborator

Scenario: Accessing a resource as a collaborator with the 'Viewer' role
  GIVEN I'm a logged in user who is a collaborator of a resource
    AND I have the role 'Viewer'
#    AND I have added the resource to my personal space as in 'Feature: Overview of received shared resources' / 'Feature: Pending Shares'
   WHEN accessing this resource
   THEN I can list the resource and its contents
    AND I can download the resource and its contents
    AND I can view the resource and its contents as in 'Feature: Accessing a resource'
    AND I can rename the resource as in 'Scenario: Renaming a shared resource in a users' personal space'
    AND I can move the resource as in 'Scenario: Moving a shared resource within a users' personal space'
    AND I can remove the resource from my personal space as in 'Feature: Removing a shared resource from a users' personal space'

Scenario: Accessing a resource as a collaborator with the 'Editor' role
  GIVEN I'm a logged in user who is a collaborator of a resource
    AND I have the role 'Editor'
#    AND I have added the resource to my personal space as in 'Feature: Overview of received shared resources' / 'Feature: Pending Shares'
   WHEN accessing this resource
   THEN I can list the resource and its contents
    AND I can download the resource and its contents
    AND I can view the resource and its contents as in 'Feature: Accessing a resource'
    AND I can rename the resource as in 'Scenario: Renaming a shared resource in a users' personal space'
    AND I can move the resource as in 'Scenario: Moving a shared resource within a users' personal space'
    AND I can remove the resource from my personal space as in 'Feature: Removing a shared resource from a users' personal space'
    AND I can rename the contents of the resource as in 'Feature: Renaming a resource'
    AND I can delete the contents of the resource as in 'Feature: Deleting a resource'
    AND I can move the contents of the resource as in 'Feature: Moving a resource'
    AND I can move resources into the resource as in 'Feature: Moving a resource'
    AND I can move resources out of the resource as in 'Feature: Moving a resource'
    AND I can create resources within the resource as in 'Feature: Creating a resource'
    AND I can upload resources into the resource as in 'Feature: Uploading a resource'
    AND I can edit/change/update the resource and its contents

Scenario: Accessing a resource as a collaborator with the 'Advanced permissions' role
  GIVEN I'm a logged in user who is a collaborator of a resource
    AND I have the role 'Advanced permissions'
#    AND I have added the resource to my personal space as in 'Feature: Overview of received shared resources' / 'Feature: Pending Shares'
   WHEN accessing this resource
   THEN I can list the resource and its contents
    AND I can download the resource and its contents
    AND I can view the resource and its contents as in 'Feature: Accessing a resource'
    AND I can rename the resource as in 'Scenario: Renaming a shared resource in a users' personal space'
    AND I can move the resource as in 'Scenario: Moving a shared resource within a users' personal space'
    AND I can remove the resource from my personal space as in 'Feature: Removing a shared resource from a users' personal space'
    AND I can use the resource based on the additionally granted detailed permissions described below
    AND the granted detailed permissions can stack/complement each other

   WHEN accessing this resources without any of the detailed permissions
   THEN the behavior equals 'Scenario: Accessing a resource as a collaborator with the 'Viewer' role'

   WHEN accessing this resource only with the permission "Edit" (single file)
   THEN I can edit/change/update the resource

   WHEN accessing this resource only with the permission "Create" (folder)
   THEN I can move resources into the resource as in 'Feature: Moving a resource'
    AND I can create resources within the resource as in 'Feature: Creating a resource'
    AND I can upload resources into the resource as in 'Feature: Uploading a resource'

   WHEN accessing this resource only with the permission "Change" (folder)
   THEN I can rename the contents of the resource as in 'Feature: Renaming a resource'
    AND I can edit/change/update the resource and its contents

   WHEN accessing this resource only with the permission "Delete" (folder)
   THEN I can delete the contents of the resource as in 'Feature: Deleting a resource'
    AND I can move resources out of the resource as in 'Feature: Moving a resource'

   WHEN accessing this resource only with the permission "Manage"
   THEN I can add collaborators to the resource as in 'Feature: Adding collaborators to a resource'
    AND I can manage the collaborators of the resource as in 'Feature: Managing collaborators of a resource'

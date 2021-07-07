Feature: Accessing a resource as a collaborator

Scenario: Accessing a resource as a collaborator with the 'Viewer' role
  Given I'm a logged in user who is a collaborator of a resource
    And I have the role 'Viewer'
#    And I have added the resource to my personal space as in 'Feature: Overview of received shared resources' / 'Feature: Pending Shares'
   When accessing this resource
   Then I can list the resource and its contents
    And I can download the resource and its contents
    And I can view the resource and its contents as in 'Feature: Accessing a resource'
    And I can rename the resource as in 'Scenario: Renaming a shared resource in a user's personal space'
    And I can move the resource as in 'Scenario: Moving a shared resource within a user's personal space'
    And I can remove the resource from my personal space as in 'Feature: Removing a shared resource from a user's personal space'

Scenario: Accessing a resource as a collaborator with the 'Editor' role
  Given I'm a logged in user who is a collaborator of a resource
    And I have the role 'Editor'
#    And I have added the resource to my personal space as in 'Feature: Overview of received shared resources' / 'Feature: Pending Shares'
   When accessing this resource
   Then I can list the resource and its contents
    And I can download the resource and its contents
    And I can view the resource and its contents as in 'Feature: Accessing a resource'
    And I can rename the resource as in 'Scenario: Renaming a shared resource in a user's personal space'
    And I can move the resource as in 'Scenario: Moving a shared resource within a user's personal space'
    And I can remove the resource from my personal space as in 'Feature: Removing a shared resource from a user's personal space'
    And I can rename the contents of the resource as in 'Feature: Renaming a resource'
    And I can delete the contents of the resource as in 'Feature: Deleting a resource'
    And I can move the contents of the resource as in 'Feature: Moving a resource'
    And I can move resources into the resource as in 'Feature: Moving a resource'
    And I can move resources out of the resource as in 'Feature: Moving a resource'
    And I can create resources within the resource as in 'Feature: Creating a resource'
    And I can upload resources into the resource as in 'Feature: Uploading a resource'
    And I can edit/change/update the resource and its contents

Scenario: Accessing a resource as a collaborator with the 'Advanced permissions' role
  Given I'm a logged in user who is a collaborator of a resource
    And I have the role 'Advanced permissions'
#    And I have added the resource to my personal space as in 'Feature: Overview of received shared resources' / 'Feature: Pending Shares'
   When accessing this resource
   Then I can list the resource and its contents
    And I can download the resource and its contents
    And I can view the resource and its contents as in 'Feature: Accessing a resource'
    And I can rename the resource as in 'Scenario: Renaming a shared resource in a user's personal space'
    And I can move the resource as in 'Scenario: Moving a shared resource within a user's personal space'
    And I can remove the resource from my personal space as in 'Feature: Removing a shared resource from a user's personal space'
    And I can use the resource based on the additionally granted detailed permissions described below
    And the granted detailed permissions can stack/complement each other

   When accessing this resources without any of the detailed permissions
   Then the behavior equals 'Scenario: Accessing a resource as a collaborator with the 'Viewer' role'

   When accessing this resource only with the permission "Edit" (single file)
   Then I can edit/change/update the resource

   When accessing this resource only with the permission "Create" (folder)
   Then I can move resources into the resource as in 'Feature: Moving a resource'
    And I can create resources within the resource as in 'Feature: Creating a resource'
    And I can upload resources into the resource as in 'Feature: Uploading a resource'

   When accessing this resource only with the permission "Change" (folder)
   Then I can rename the contents of the resource as in 'Feature: Renaming a resource'
    And I can edit/change/update the resource and its contents

   When accessing this resource only with the permission "Delete" (folder)
   Then I can delete the contents of the resource as in 'Feature: Deleting a resource'
    And I can move resources out of the resource as in 'Feature: Moving a resource'

   When accessing this resource only with the permission "Manage"
   Then I can add collaborators to the resource as in 'Feature: Adding collaborators to a resource'
    And I can manage the collaborators of the resource as in 'Feature: Managing collaborators of a resource'

Feature: Being added/removed as a collaborator to/from a resource

Scenario: Being added as a regular single user
  Given I'm a regular ownCloud user of the instance the resource is located on
   When I'm added as a collaborator to a resource as in 'Feature: Adding collaborators to a resource'
   Then the subsequent behavior is determined by 'Feature: Pending Shares'

Scenario: Being removed as a collaborator from a resource
  Given I'm a collaborator of a certain resource
   When I'm removed from the resource as in 'Scenario: Removing a collaborator from a resource'
   Then I do not have access to the resource anymore
    And the resource disappears from my resource list
    And I don't have a way to get back access except asking a collaborator to add me again

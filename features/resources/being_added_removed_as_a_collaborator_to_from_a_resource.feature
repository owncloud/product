Feature: Being added/removed as a collaborator to/from a resource

Scenario: Being added as a regular single user
  GIVEN I'm a regular ownCloud user of the instance the resource is located on
   WHEN I'm added as a collaborator to a resource as in 'Feature: Adding collaborators to a resource'
   THEN the subsequent behavior is determined by 'Feature: Pending Shares'

Scenario: Being removed as a collaborator from a resource
  GIVEN I'm a collaborator of a certain resource
   WHEN an Owner removes me from the resource as in 'Scenario: Removing a collaborator from a resource'
     OR a Co-Owner removes me from the resource as in 'Scenario: Removing a collaborator from a resource'
   THEN I do not have access to the resource anymore
    AND the resource disappears from my resource list
    AND I don't have a way to get back access except asking an Owner/Co-Owner to add me again

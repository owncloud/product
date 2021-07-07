Feature: Managing collaborators of a resource

Scenario: Viewing collaborators of a resource as an Owner
  Given I'm a collaborator of a specific resource
    And I have the role 'Owner'
   When looking at the resource in detail
   Then I get a list of all collaborators of the resource separated by users and groups whereby each entry contains the following information
    - Name
#    - Additional information based on 'Scenario: Extra field to display in autocomplete results'
    - Avatar
#    - Type (User/Guest/Federated)
    - Role
#    - State (pending/accepted; for local/federated/guest)
#    - Expiration date (if applicable)
    - Initiator of a reshare (if applicable)
    And the list also contains collaborators of parent resources as static entries
    And collaborators of parent resources indicate their origin and allow to jump there ("via")
    And I see myself always as the first entry in the list

Scenario: Viewing collaborators of a resource as a regular collaborator
  Given I'm a collaborator of a specific resource
    And I don't have the role 'Owner'
   When looking at the resource in detail
   Then I get a list of all collaborators whom I added to the resource, separated by users and groups whereby each entry contains the following information
    - Name
#    - Additional information based on 'Scenario: Extra field to display in autocomplete results'
    - Avatar
#    - Type (User/Guest/Federated)
    - Role
#    - State (pending/accepted; for local/federated/guest)
#    - Expiration date (if applicable)
    - Initiator of a reshare (if applicable)
    And the list also contains collaborators of parent resources whom I added as static entries
    And collaborators of parent resources indicate their origin and allow to jump there ("via")
    And I see the Owner of the resource always as the first entry in the list
    And I see myself in the list

Scenario: Removing a collaborator from a resource
  Given I'm a collaborator of a specific resource
    And I can list other collaborators
   When looking at the resource in detail
   Then I can remove collaborators from the resource
    And I have to confirm the removal
    And the collaborator disappears from the list
    And the removed users do not have access anymore

Scenario: Modifying a collaborator of a resource
  Given I'm a collaborator of a specific resource
    And I can list other collaborators
   When looking at the resource in detail
   Then I can change each collaborator's role as in 'Feature: Roles for collaborators'
    And I can change each collaborator's expiration date as in 'Feature: Expiration date for collaborators'
    And I have to confirm the modifications
    And the modifications take effect

Feature: Managing collaborators of a resource

Scenario: Viewing collaborators of a resource
  GIVEN I'm a collaborator of a specific resource
    AND I have the role 'Owner'
#     OR I have the role 'Co-Owner'
   WHEN looking at the resource in detail
   THEN I get a list of all collaborators of the resource separated by users and groups that whereby each entry contains the following information
    - Name and additional information based on 'Scenario: Extra field to display in autocomplete results'
    - Avatar
    - Type (User/Guest/Federated)
    - Role
    - State (pending/accepted; for local/federated/guest)
    - Expiration date (if applicable)
    - Initiator of a reshare (if applicable)

Scenario: Removing a collaborator from a resource
  GIVEN I'm a collaborator of a specific resource
    AND I have the role 'Owner'
#     OR I have the role 'Co-Owner'
   WHEN looking at the resource in detail
   THEN I can remove collaborators from the resource
    AND I have to confirm the removal
    AND the collaborator disappears from the list
    AND the removed users do not have access anymore

Scenario: Modifying a collaborator of a resource
  GIVEN I'm a collaborator of a specific resource
    AND I have the role 'Owner'
#     OR I have the role 'Co-Owner'
   WHEN looking at the resource in detail
   THEN I can change each collaborator's role as in 'Feature: Roles for collaborators'
    AND I can change each collaborator's expiration date as in 'Feature: Expiration date for collaborators'
    AND I have to confirm the modifications
    AND the modifications take effect

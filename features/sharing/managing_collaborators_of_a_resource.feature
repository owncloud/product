Feature: Managing collaborators of a resource

Scenario: Viewing collaborators of a resource as an Owner/Co-Owner
  GIVEN I'm a collaborator of a specific resource
    AND I have the role 'Owner'
#     OR I have the role 'Co-Owner'
   WHEN looking at the resource in detail
   THEN I get a list of all collaborators of the resource separated by users and groups whereby each entry contains the following information
    - Name
#    - Additional information based on 'Scenario: Extra field to display in autocomplete results'
    - Avatar
#    - Type (User/Guest/Federated)
    - Role
#    - State (pending/accepted; for local/federated/guest)
#    - Expiration date (if applicable)
    - Initiator of a reshare (if applicable)
    AND I see the Owner of the resource always as the first entry in the list
    AND I see myself in the list (if applicable)

Scenario: Viewing collaborators of a resource as a regular collaborator
  GIVEN I'm a collaborator of a specific resource
    AND I don't have the role 'Owner'
#    AND I don't have the role 'Co-Owner'
   WHEN looking at the resource in detail
   THEN I get a list of all collaborators whom I added to the resource, separated by users and groups whereby each entry contains the following information
    - Name
#    - Additional information based on 'Scenario: Extra field to display in autocomplete results'
    - Avatar
#    - Type (User/Guest/Federated)
    - Role
#    - State (pending/accepted; for local/federated/guest)
#    - Expiration date (if applicable)
    - Initiator of a reshare (if applicable)
    AND I see the Owner of the resource always as the first entry in the list
    AND I see myself in the list

Scenario: Removing a collaborator from a resource
  GIVEN I'm a collaborator of a specific resource
    AND I have the role 'Owner'
#     OR I have the role 'Co-Owner'
     OR I have the permission 'Share'
    AND I have previously added collaborators to the resource
   WHEN looking at the resource in detail
   THEN I can remove collaborators from the resource
    AND I have to confirm the removal
    AND the collaborator disappears from the list
    AND the removed users do not have access anymore

Scenario: Modifying a collaborator of a resource
  GIVEN I'm a collaborator of a specific resource
    AND I have the role 'Owner'
#    OR I have the role 'Co-Owner'
     OR I have the permission 'Share'
    AND I have previously added collaborators to the resource
   WHEN looking at the resource in detail
   THEN I can change each collaborator's role as in 'Feature: Roles for collaborators'
    AND I can change each collaborator's expiration date as in 'Feature: Expiration date for collaborators'
    AND I have to confirm the modifications
    AND the modifications take effect

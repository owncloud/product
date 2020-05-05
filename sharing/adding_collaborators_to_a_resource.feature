Feature: Adding collaborators to a resource

Scenario: Finding collaborators
  GIVEN I'm a logged in user located in the collaborators panel of a resource
   WHEN I start typing in the collaborator search field
   THEN I see suggestions (with potentially many characters) based on the available user and group identifiers/attributes, sharing restrictions and options for autocomplete results. These are structured in the following way:
        - [Avatar] Identifier / name / mail address / federation ID
        - Additional information if applicable (e.g. 'Scenario: Extra field to display in autocomplete results')
        - Type (User/Group/Guest/Federated)
    AND the suggestions for guests or federated users only appear once I enter a compliant identifier (e.g., "name@sub.domain.tld")
   THEN I choose a collaborator
    AND the chosen collaborator's becomes fixed but can easily be removed again
    AND I can start typing again to add additional collaborators

Scenario: Setting collaborator properties
  GIVEN I'm adding collaborators as in 'Scenario: Finding collaborators'
   WHEN having added the first collaborator
   THEN I can choose a role for the chosen collaborators as in 'Feature: Roles for collaborators'
   THEN I can set an expiration date for the chosen collaborators as in 'Feature: Expiration date for collaborators'

Scenario: Confirming collaborators
  GIVEN I have set collaborator properties as in 'Scenario: Setting collaborator properties'
   WHEN I confirm the supplied information
   THEN the collaborators are added to the resource according to the specified properties
    AND I get visual feedback to know whether the action was successful or not

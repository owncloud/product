Feature: Adding collaborators to a resource

Scenario: Finding collaborators
  Given I'm a logged in user located in the collaborators panel of a resource
   When I start typing in the collaborator search field
   Then I see suggestions (with potentially many characters) based on the available user and group identifiers/attributes, sharing restrictions and options for autocomplete results. These are structured in the following way:
        - [Avatar] Identifier / name / mail address / federation ID
        - Additional information if applicable (e.g. 'Scenario: Extra field to display in autocomplete results')
        - Type (User/Group/Guest/Federated)
    And the suggestions for guests or federated users only appear once I enter a compliant identifier (e.g., "name@sub.domain.tld")
   Then I choose a collaborator
    And the chosen collaborator becomes fixed but can easily be removed again
    And I can start typing again to add additional collaborators

Scenario: Setting collaborator properties
  Given I'm adding collaborators as in 'Scenario: Finding collaborators'
   When having added the first collaborator
   Then I can choose a role for the chosen collaborators as in 'Feature: Roles for collaborators'
   Then I can set an expiration date for the chosen collaborators as in 'Feature: Expiration date for collaborators'

Scenario: Confirming collaborators
  Given I have set collaborator properties as in 'Scenario: Setting collaborator properties'
   When I confirm the supplied information
   Then the collaborators are added to the resource according to the specified properties
    And I get visual feedback to know whether the action was successful or not

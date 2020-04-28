Feature: Adding a link on a resource

Scenario: Setting link properties
  GIVEN I'm a logged in user located in the links panel of a resource I'm an owner, co-owner or another role with share permission of
   WHEN adding a link to the resource
   THEN I can recognize which resource I'm about to create a link to
    AND I can choose a name for the link. This name allows to add some information to the link and is only visible to the owner or co-owners.
    AND I can choose a role for the recipients as in 'Feature: Roles for links'
    AND I can set an expiration date for the link as in 'Feature: Expiration date for links'
    AND I can set a password for the link as in 'Feature: Password protection for links'
    AND I can enter email addresses and a personal note to send the link via mail as in 'Feature: Sending links via mail' if the Sharing option 'Allow users to send mail notification for shared files' is enabled

Scenario: Confirming link creation
  GIVEN I have set link properties as in 'Scenario: Setting link properties'
   WHEN I confirm the supplied information
   THEN the link is added to the resource according to the specified properties
    AND I get visual feedback to know whether the action was successful or not

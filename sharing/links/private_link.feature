Feature: Private link

As a collaborator of a resource I want to be able to point other users to the resource or an item within the resource via mail or chat, for example, for that other collaborators can directly find it and know exactly which resource I refer to in case they renamed or moved it. For this I want to use a unique identifier that is independent of the resource name or path. Non-collaborators with the link should not be able to access the resource for additional security.

Scenario: Copying a private link
  GIVEN I'm a logged in user
  WHEN looking at a specific resource
  THEN I can copy the unique identifier of this resource to the clipboard
  AND I get informed that this identifier does not provide access itself and will only "work" for collaborators
  THEN my clipboard contains the link
  THEN I get positive feedback for the copy action to know that it worked



Feature: Expiration date for links

- As a user I want to set an expiration date for links in order to stay in control of access permissions by giving time-based access instead of granting access forever or until I manually remove the link.
- As an admin I want to set a default expiration date without enforcement to give a recommendation to users and help them maintain control over their resources. Still I don't want to force or annoy users as some may have reasons to collaborate on resources for a longer amount of time, e.g., in projects.
- As an admin I have to follow corporate policies which dictate that data exchange with externals may only take place for a certain maximum amount of time to prevent data leaks by human mistake or negligence.

Scenario: Setting an expiration date for links (no default expiration date set)
  GIVEN I'm an owner or co-owner of a specific resource
  AND the instance has no default expiration date set for links
  WHEN located in 'Scenario: Setting link properties' or 'Scenario: Modifying a link on a resource'
  THEN the expiration date is not set unless it was set before
  THEN I can set an expiration date by manually entering it or by using a date picker
  AND I'm not limited in any way concerning the date except that it must be in the future

Scenario: Setting an expiration date for links (default expiration date set without enforcement)
  GIVEN I'm an owner or co-owner of a specific resource
  AND the instance has a default expiration date without enforcement set for collaborators
  WHEN located in 'Scenario: Setting link properties' or 'Scenario: Modifying a link on a resource'
  THEN the expiration date is set to the default value unless it was set to a different value before
  THEN I can change the expiration date by manually entering it or by using a date picker
  AND I'm not limited in any way concerning the date except that it must be in the future

Scenario: Setting an expiration date for links (default expiration date set with enforcement)
  GIVEN I'm an owner or co-owner of a specific resource
  AND the instance has a default expiration date with enforcement set for collaborators
  WHEN located in 'Scenario: Setting link properties' or 'Scenario: Modifying a link on a resource'
  THEN the expiration date is set to the default value unless it was set to a different value before
  THEN I can change the expiration date by manually entering it or by using a date picker
  AND I'm limited concerning the date in a way that it must be at least the default value or earlier

Scenario: Setting an expiration date for links (Password Policy option 'X days until link expires if password is set' set)
  TODO:

Scenario: Setting an expiration date for links (Password Policy option 'X days until link expires if password is NOT set' set)
  TODO:

Scenario: Expiring a link
  GIVEN an expiration date has been set for a collaborator on a certain resource
  WHEN the specified day has just ended
  THEN the collaborator is automatically removed from the resource according to 'Scenario: Removing a collaborator from a resource'



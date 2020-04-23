Feature: Password protection for links

Scenario: Setting a password for links (no policy)
  GIVEN I'm an owner or co-owner of a specific resource
    AND the instance has no password protection enforcement configured
    AND the instance has no password policies configured
   WHEN located in 'Scenario: Setting link properties'
   THEN I can enter an arbitrary password string for the link
    AND the password string is only limited by technical restrictions (e.g., in length)
    AND the password string is case-sensitive
    AND I can decide not to set a password string by leaving it empty

Scenario: Setting a password for links ('Enforce password protection for read-only links' enabled)
  TODO:

Scenario: Setting a password for links ('Enforce password protection for read & write links' enabled)
  TODO:

Scenario: Setting a password for links ('Enforce password protection for upload-only (File Drop) links' enabled)
  TODO:

Scenario: Changing a password for a link

- Password policy => Password requirements!
-

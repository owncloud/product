Feature: Managing links on a resource

Scenario: Viewing links on a resource with the role 'Owner' or 'Co-Owner'
  GIVEN I'm a collaborator of a specific resource
    AND I have the role 'Owner'
     OR I have the role 'Co-Owner'
   WHEN looking at the resource in detail
   THEN I see the base link / collaborator link
    AND I see an explanatory note "Only invited collaborators can use this link."
   THEN I get a list of all links with access roles on the resource whereby each entry contains the following information
    - Link name
    - Link role
    - Indicator for password protection
    - Expiration date
    - Initiator of a reshare (if applicable)
    AND I see an explanatory note "Anyone with the link can access this resource. No sign-in required."
    AND I can recognize each links' URL
    AND I can copy each links' URL as in 'Scenario: Copying a private link'
    AND I can remove a link as in 'Scenario: Removing a link on a resource'
    AND I can modify a link as in 'Scenario: Modifying a link on a resource'

Scenario: Viewing links on a resource as a collaborator **with** 'Share' permission
  GIVEN I'm a collaborator of a specific resource
    AND I have a role with 'Share' permission
   WHEN looking at the resource in detail
   THEN I see the base link / collaborator link
    AND I see an explanatory note "Only invited collaborators can use this link."
   THEN I get a list of all links with access roles on the resource **which I created** whereby each entry contains the following information
    - Link name
    - Link role
    - Indicator for password protection
    - Expiration date
    - Initiator of a reshare (if applicable)
    AND I see an explanatory note "Anyone with the link can access this resource. No sign-in required."
    AND I can recognize each links' URL
    AND I can copy each links' URL as in 'Scenario: Copying a private link'
    AND I can remove a link **I created** as in 'Scenario: Removing a link on a resource'
    AND I can modify a link **I created** as in 'Scenario: Modifying a link on a resource'

Scenario: Viewing links on a resource as a collaborator **without** 'Share' permission
  GIVEN I'm a collaborator of a specific resource
    AND I have a role without 'Share' permission
   WHEN looking at the resource in detail
   THEN I see the base link / collaborator link
    AND I see an explanatory note "Only invited collaborators can use this link."
    AND I can recognize each links' URL
    AND I can copy each links' URL as in 'Scenario: Copying a private link'

Scenario: Removing a link on a resource
  GIVEN I'm a collaborator of a specific resource
   WHEN viewing links on a resource as in 'Scenario: Viewing links on a resource [*]'
   THEN I can remove each link on the resource which I can list
    AND I have to confirm the removal
    AND a removed link disappears from the list
    AND a removed link is invalidated

Scenario: Modifying a link on a resource
  GIVEN I'm a collaborator of a specific resource
   WHEN viewing links on a resource as in 'Scenario: Viewing links on a resource [*]'
   THEN I can change the name of each link which I can list
    AND I can change the role of each link which I can list as in 'Feature: Roles for links'
    AND I can change the expiration date of each link which I can list as in 'Feature: Expiration date for links'
    AND I can change the password of each link which I can list as in 'Feature: Password protection for links'
    AND I can send the link via mail as in 'Feature: Sending links via mail'
    AND I have to confirm the modifications
    AND the modifications take effect

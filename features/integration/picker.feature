Feature: Location/resource picker

Scenario: Choosing a location in ownCloud
  Given I'm a logged in user (SSO)
    And I'm using another product
   When I want to store a resource in ownCloud
   Then I see a resource listing of the root folder of my personal space
    And the visible elements comply with the respective oC branding
    And I can see the current path (breadcrumb)
    And I can see which elements are shared (sharing indicators)
    And I can navigate down the hierarchy
    And I can jump up the hierarchy by each level
    And I can cancel the process
    And I can confirm the currently chosen location

Scenario: Choosing a resource from ownCloud
  Given I'm a logged in user (SSO)
    And I'm using another product
   When I want to store a resource in ownCloud
   Then I see a resource listing of the root folder of my personal space
    And the visible elements comply with the respective oC branding
    And I can see the current path (breadcrumb)
    And I can see which elements are shared (sharing indicators)
    And I can navigate down the hierarchy
    And I can jump up the hierarchy by each level
    And I can select a single resource
    And I can cancel the process
    And I can confirm the currently chosen resource

Feature: Roles for collaborators

- Owner: The physical owner of the resource
#- Co-Owner: Full permissions including managing existing and adding additional collaborators
- Editor: View + Edit permissions
- Viewer: View only
#- Dynamic roles (e.g. Secure Viewer)
- Advanced permissions
  - Cover legacy permission combinations
  - Offer granular permission sets

Scenario: Setting roles for collaborators on a single file
  Given I'm a collaborator of a specific file
    And I have the role 'Owner'
#     Or I have the role 'Co-Owner'
   When located in 'Scenario: Setting collaborator properties'
#   Then I can choose the role 'Co-Owner'
#    And I see an explanatory note "Manage collaborators, view, download and edit"
   Then I can choose the role 'Editor'
    And I see an explanatory note "View, download and edit"
   Then I can choose the role 'Viewer'
    And I see an explanatory note "View and download"
#   Then I can choose dynamic roles like 'Secure Viewer' which are introduced by apps
#    And I see an explanatory note defined by the respective app
#   When choosing a dynamic role
#   Then I can set single sub-permissions like 'Print / Export PDF' defined by the respective app
   Then I can choose the role 'Advanced permissions'
    And I see an explanatory note "Set detailed permissions"
   When choosing the role 'Advanced permissions'
   Then I can set single permissions "Manage" and "Edit"

Scenario: Setting roles for collaborators on a folder
  Given I'm a collaborator of a specific folder
    And I have the role 'Owner'
#     Or I have the role 'Co-Owner'
   When located in 'Scenario: Setting collaborator properties'
#   Then I can choose the role 'Co-Owner'
#    And I see an explanatory note "Manage collaborators, view, download, edit and delete"
   Then I can choose the role 'Editor'
    And I see an explanatory note "View, download, edit and delete"
   Then I can choose the role 'Viewer'
    And I see an explanatory note "View and download"
#   Then I can choose dynamic roles like 'Secure Viewer' which are introduced by apps
#    And I see an explanatory note defined by the respective app
#   When choosing a dynamic role
#   Then I can set single sub-permissions like 'Print / Export PDF' defined by the respective app
   Then I can choose the role 'Advanced permissions'
    And I see an explanatory note "Set detailed permissions"
   When choosing the role 'Advanced permissions'
   Then I can set single permissions "Manage", "Create", "Change", "Delete"

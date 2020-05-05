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
  GIVEN I'm a collaborator of a specific file
    AND I have the role 'Owner'
#     OR I have the role 'Co-Owner'
   WHEN located in 'Scenario: Setting collaborator properties'
#   THEN I can choose the role 'Co-Owner'
#    AND I see an explanatory note "Manage collaborators, view, download and edit"
   THEN I can choose the role 'Editor'
    AND I see an explanatory note "View, download and edit"
   THEN I can choose the role 'Viewer'
    AND I see an explanatory note "View and download"
#   THEN I can choose dynamic roles like 'Secure Viewer' which are introduced by apps
#    AND I see an explanatory note defined by the respective app
#   WHEN choosing a dynamic role
#   THEN I can set single sub-permissions like 'Print / Export PDF' defined by the respective app
   THEN I can choose the role 'Advanced permissions'
    AND I see an explanatory note "Set detailed permissions"
   WHEN choosing the role 'Advanced permissions'
   THEN I can set single permissions "Manage" and "Edit"

Scenario: Setting roles for collaborators on a folder
  GIVEN I'm a collaborator of a specific folder
    AND I have the role 'Owner'
#     OR I have the role 'Co-Owner'
   WHEN located in 'Scenario: Setting collaborator properties'
#   THEN I can choose the role 'Co-Owner'
#    AND I see an explanatory note "Manage collaborators, view, download, edit and delete"
   THEN I can choose the role 'Editor'
    AND I see an explanatory note "View, download, edit and delete"
   THEN I can choose the role 'Viewer'
    AND I see an explanatory note "View and download"
#   THEN I can choose dynamic roles like 'Secure Viewer' which are introduced by apps
#    AND I see an explanatory note defined by the respective app
#   WHEN choosing a dynamic role
#   THEN I can set single sub-permissions like 'Print / Export PDF' defined by the respective app
   THEN I can choose the role 'Advanced permissions'
    AND I see an explanatory note "Set detailed permissions"
   WHEN choosing the role 'Advanced permissions'
   THEN I can set single permissions "Manage", "Create", "Change", "Delete"

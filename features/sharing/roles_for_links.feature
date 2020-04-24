Feature: Roles for links

Scenario: Setting roles for links on a single file
  GIVEN I'm an owner or co-owner of a specific resource
   WHEN located in 'Scenario: Setting link properties'
   THEN the role 'Viewer' is chosen
    AND I see an explanatory note "Recipients can view and download contents."

Scenario: Setting roles for links on a folder
  GIVEN I'm an owner or co-owner of a specific resource
   WHEN located in 'Scenario: Setting link properties'
   THEN the role 'Viewer' is chosen unless a different role has been chosen before
    AND I see an explanatory note "Recipients can view and download contents."
   THEN I can choose the role 'Contributor'
    AND I see an explanatory note "Recipients can view, download and upload contents."
   THEN I can choose the role 'Editor'
    AND I see an explanatory note "Recipients can view, download, edit, delete and upload contents."
   THEN I can choose the role 'Uploader'
    AND I see an explanatory note "Recipients can upload but existing contents are not revealed."

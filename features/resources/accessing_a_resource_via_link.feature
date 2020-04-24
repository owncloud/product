Feature: Accessing a resource via a link

Scenario: Accessing a resource via a link with the 'Viewer' role
  GIVEN I'm anyone with a link to a resource with the 'Viewer' role
   WHEN accessing this resource
   THEN I see an explanatory note "You can view and download contents."
    AND I can list the resource and its contents
    AND I can download the resource and its contents
    AND I can view the resource and its contents as in 'Feature: Accessing a resource'

Scenario: Accessing a resource via a link with the 'Contributor' role
  GIVEN I'm anyone with a link to a resource with the 'Contributor' role
   WHEN accessing this resource
   THEN I see an explanatory note "You can view, download and upload contents."
    AND I can list the resource and its contents
    AND I can download the resource and its contents
    AND I can view the resource and its contents as in 'Feature: Accessing a resource'
    AND I can upload resources into the resource as in 'Feature: Uploading a resource'

Scenario: Accessing a resource via a link with the 'Editor' role
  GIVEN I'm anyone with a link to a resource with the 'Editor' role
   WHEN accessing this resource
   THEN I see an explanatory note "You can view, download, edit, delete and upload contents."
    AND I can list the resource and its contents
    AND I can download the resource and its contents
    AND I can view the resource and its contents as in 'Feature: Accessing a resource'
    AND I can upload resources into the resource as in 'Feature: Uploading a resource'
    AND I can rename the contents of the resource as in 'Feature: Renaming a resource'
    AND I can delete the contents of the resource as in 'Feature: Deleting a resource'
    AND I can move the contents of the resource as in 'Feature: Moving a resource'
    AND I can create resources within the resource as in 'Feature: Creating a resource'
    AND I can edit/change/update the resource and its contents

Scenario: Accessing a resource via a link with the 'Uploader' role
  GIVEN I'm anyone with a link to a resource with the 'Uploader' role
   WHEN accessing this resource
   THEN I see an explanatory note "You can drop files here for <link creator display name/user name>."
    AND I see a drop zone to add resources via drag & drop or to choose a resource to be added
    AND I can upload resources into the resource as in 'Feature: Uploading a resource'
    AND I see a list of resources that I uploaded

Scenario: Accessing a resource 
  GIVEN I'm anyone with a link to a resource with the 'Viewer' role
   WHEN accessing this resource
   THEN I see an explanatory note "You can view and download contents."
    AND I can list the resource and its contents
    AND I can download the resource and its contents
    AND I can view the resource and its contents
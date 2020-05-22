title: Integrating oC in other products
weight: 1
geekdocRepo: https://github.com/owncloud/product
geekdocEditPath: edit/master/docs
geekdocFilePath: oc_in_other_products.md
---

# General

- For frontend integration oC provides components as JS libraries to be used by other products
- The components should comply with oC branding
- Backend functionality is provided via API calls, authenticated via OIDC

## Requirements

### Location/resource picker
- As a user of a third party product I want to store files in ownCloud for that I can further work with them
- As a user of a third party product I want to choose a file from ownCloud for that I can further work with it
- As a user of a third party product I want to choose a file from ownCloud and get a public link back for that I can further work with that
- As a user of a third party product I want to choose a local file, store it in ownCloud and get a public link back for that I can further work with it

{{< include file="features/integration/picker.feature" language="gherkin" >}}

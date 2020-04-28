---
title: Links
geekdocRepo: https://github.com/owncloud/product
geekdocEditPath: edit/master/docs
geekdocFilePath: links.md
---

This document describes the features around 'Links' from the perspective of the owner. The perspective of a recipient is described in the section 'Resources'.

## User stories

1. Private Link
   - As a user I want to be able to refer to shared resources by posting a static link (that never changes) on other media like email, chat rooms
2. Link that can grant access (Public Link)
   - As a user (owner) I want to collaborate on any resource quickly & easily with anybody.
   - As a collaborator (share recipient) of a resource I want to collaborate on the resource quickly & easily with anybody.
   - As a user or a collaborator I want to protect any shared resource with a password to prevent leaks or abuse.
   - As a user I want to control the lifetime of links for that I do not provide infinite access (as I might forget about it and might leak data).
   - As a user I want to control what individual recipients are allowed to do with shared resources

## Requirements

### Adding a link on a resource

{{< include file="features/sharing/adding_a_link_on_a_resource.feature" language="gherkin">}}

### Managing links on a resource

{{< include file="features/sharing/managing_links_on_a_resource.feature" language="gherkin">}}

### Roles for links

{{< include file="features/sharing/roles_for_links.feature" language="gherkin" >}}

### Expiration date for links

{{< include file="features/sharing/expiration_date_for_links.feature" language="gherkin" >}}

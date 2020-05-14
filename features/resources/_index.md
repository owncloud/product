---
title: Resources
geekdocRepo: https://github.com/owncloud/product
geekdocEditPath: edit/master/docs
geekdocFilePath: _index.md
---

## User stories

## Requirements

### Accessing a resource as a collaborator

{{< include file="features/resources/accessing_a_resource_as_a_collaborator.feature" language="gherkin" >}}

### Being added/removed as a collaborator to/from a resource

{{< include file="features/resources/being_added_removed_as_a_collaborator_to_from_a_resource.feature" language="gherkin" >}}

### Pending Shares

- As a user I don't want that resources I'm added as a collaborator to are directly available in my hierarchy and for sync for that I can decide whether I need them or not.
- As a user I want that resources I'm added as a collaborator to are directly available in my hierarchy and for sync for that I can directly work with them without requiring any interaction.

{{< include file="features/resources/pending_shares.feature" language="gherkin" >}}

### Overview of received shared resources

- As a user I only want to view the resources that I'm a collaborator of to separate other users' files from mine as well as to add or remove them to/from my personal space.
- As a user I want to get a list of collaborator invitations that I didn't yet decide upon ("Pending Shares") to be able to add a pending shared space to my personal space after dismissing the invitation notification or to re-add a resource I previously removed from my personal space as in 'Feature: Removing a shared resource from a users' personal space'.
- As a user it helps me to list shares with state "Pending" first by default as these are usually the most actionable ones.

{{< include file="features/resources/overview_of_received_shared_resources.feature" language="gherkin" >}}


### Accessing a resource via a link

{{< include file="features/resources/accessing_a_resource_via_link.feature" language="gherkin" >}}

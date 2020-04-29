---
title: Collaborators
geekdocRepo: https://github.com/owncloud/product
geekdocEditPath: edit/master/docs
geekdocFilePath: collaborators.md
---

This document describes the features around 'Collaborators' from the perspective of the owner. The perspective of a recipient is described in the section 'Resources'.

## User stories

## Requirements

### Adding collaborators to a resource

- As an owner or co-owner of a resource I want to be able to add other collaborators to the resource in order to provide access and to enable collaboration on the resource.

{{< include file="features/sharing/adding_collaborators_to_a_resource.feature" language="gherkin">}}

### Managing collaborators of a resource

{{< include file="features/sharing/managing_collaborators_of_a_resource.feature" language="gherkin">}}

### Roles for collaborators

- As a regular user adding collaborators to a resource I want to choose roles for collaborators as these are easy to understand and less technical than raw permissions. Still, I need a brief explanation of what the roles exactly stand for in order to prevent mistakes. For legacy reasons and as a power user I still need granular permissions to restrict collaborators to exactly the features I want to allow.

{{< include file="features/sharing/roles_for_collaborators.feature" language="gherkin">}}

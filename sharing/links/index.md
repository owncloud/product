# Links
## Use cases

1. Private Link
2. Link that can grant access
- As a user I want to quickly exchange data with externals as a one-off / temporary action
- As a user I want to make data available online without authentication

## Requirements

### Adding a link on a resource



### Managing links on a resource

[source]
----
include::example$ocis/links/managing_links_on_a_resource.feature[]
----

### RESHARE / PERMISSION INCREASE SCENARIO
- at any point in time you should be able to set permissions in the range of the original share permissions

### Roles for links

[source]
----
include::example$ocis/links/roles_for_links.feature[]
----

### Password protection for links

[source]
----
include::example$ocis/links/password_protection_for_links.feature[]
----

### Sending links via mail

[source]
----
include::example$ocis/links/sending_links_via_mail.feature[]
----

### Expiration date for links

[source]
----
include::example$ocis/links/expiration_date_for_links.feature[]
----

### Import links as federated shares

[source]
----
include::example$ocis/links/import_links_as_federated_shares.feature[]
----

### Private link

[source]
----
include::example$ocis/links/private_link.feature[]
----

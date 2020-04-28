---
title: "Example Feature"
date: 2018-05-02T00:00:00+00:00
weight: 15
geekdocRepo: https://github.com/owncloud/product
geekdocEditPath: edit/master/docs
geekdocFilePath: example.md
---

{{< toc >}}

{{< hint info >}}
This is only an example to show the usage of this Docs
{{< /hint >}}

## Headings

Headings are summarized in a table of contents if you include {{</* toc */>}} at the beginning of your file.

You always need to start with Level 2, Level 1 is already used as the page title.

### Level 3 - Shortcodes

Find all shortcodes of the Geekdoc Theme [here](https://geekdocs.de/shortcodes/)

#### Level 4

This Hugo Theme uses the goldmark renderer.

### Example for an included .feature file

**Used Shortcode**  
{{</* include file="features/example/example.feature" language="gherkin" */>}}

**Rendered Result**  
{{< include file="features/example/example.feature" language="gherkin" >}}

### Example for a mermaid diagram

{{< mermaid class="text-center">}}
sequenceDiagram
    Alice->>Bob: Hello Bob, how are you?
    alt is sick
        Bob->>Alice: Not so good :(
    else is well
        Bob->>Alice: Feeling fresh like a daisy
    end
    opt Extra response
        Bob->>Alice: Thanks for asking
    end
{{< /mermaid >}}
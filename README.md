# Product

ownCloud Product Backlog and Documentaion

https://owncloud.github.io/product

## Working with this Documentation

All product features are organized in `features/feature-name`

Every feature folder could have a *.md file for the feature description and one or more *.feature files providing a high-level Feature definition in Gherkin language.

### Example Feature

```
features/example/
├── _index.md
├── example.feature
└── example.md
```

#### Editing

- Start the hugo server with `make docs-server'
- Open `https://localhost:1313` in the browser
- Changing the content automatically triggers a reload in the browser

## Hugo Theme

- https://github.com/xoxys/hugo-geekdoc
- https://geekdocs.de

Brought to us by geeklab (@xoxys)
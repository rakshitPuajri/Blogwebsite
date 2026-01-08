---
layout: post.njk
title: Getting Started with Eleventy
date: 2026-01-08
description: Learn how to build a fast and modern static website with Eleventy
tags:
  - blog
  - eleventy
  - tutorial
---

Eleventy is a simpler static site generator that requires zero config by default but can be configured to match any workflow. Let me show you why I love it.

## Why Eleventy?

1. **Zero Config**: Works out of the box with sensible defaults
2. **Flexible Input Formats**: Markdown, Nunjucks, Liquid, Handlebars, Mustache, EJS, Haml, Pug, and WebC
3. **Lightning Fast**: Builds entire sites in milliseconds
4. **Independent**: Not dependent on a JavaScript framework
5. **Best Output**: Fresh, clean HTML output with no unnecessary bloat

## Getting Started

First, install Eleventy:

```bash
npm install --save-dev @11ty/eleventy
```

Create a simple markdown file:

```markdown
# Hello World

This is my first Eleventy post!
```

Run Eleventy:

```bash
npx eleventy --serve
```

That's it! Your site is now live on `localhost:8080`.

## Key Features

Eleventy supports multiple template languages out of the box. You can mix and match them in your project:

- **Markdown**: Great for content
- **Nunjucks**: Mozilla's powerful templating engine
- **Liquid**: Jekyll-compatible templates
- **HTML**: Plain HTML with template features

## Collections

One of Eleventy's powerful features is collections. You can create collections to organize your content:

```javascript
eleventyConfig.addCollection("blog", function(collection) {
  return collection.getFilteredByGlob("src/posts/*.md");
});
```

## Next Steps

- [Official Eleventy Documentation](https://www.11ty.dev)
- Explore the source code on [GitHub](https://github.com/11ty/eleventy)
- Join the Eleventy community on [Discord](https://discord.gg/9RFZjwQ)

---

Happy building! 🚀

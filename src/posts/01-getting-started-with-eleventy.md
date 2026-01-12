---
layout: post.njk
title: Art and science of manging "Data as a Product"
date: 2026-01-12
description: Learn how to build a fast and modern static website with Eleventy
tags:
  - blog
  - SAP Data Products
  - Data Mesh 
  - SAP BDC
---

In the modern digital enterprise, data is no longer simply a byproduct of operations - it's a core business asset that drives innovation, decisions, and customer experience. Yet, the challenge lies not in generating data, but in managing it effectively.

## Two Worlds of Data: Operational and Analytical
Most enterprise landscapes are split into two planes of data.

* The operational data plane is transactional and stateful. It powers business applications and captures what is happening right now - for example, a sales order being created in SAP S/4HANA.​
* The analytical data plane is temporal and aggregated. It looks across history to support reporting, forecasting, and advanced analytics

In SAP-centric environments, data is typically replicated from the operational plane into the analytical plane using technologies such as SAP Landscape Transformation (SLT) or Smart Data Integration (SDI). Over time, this analytical side has evolved into two distinct archetypes:​
Data warehouse: structured, governed models for BI and reporting.​
Data lake: flexible storage for raw and semi-structured data, often consumed by data science and machine learning workloads
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

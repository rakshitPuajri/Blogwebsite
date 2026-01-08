---
layout: post.njk
title: Modern CSS Techniques in 2026
date: 2026-01-06
description: Exploring cutting-edge CSS features and best practices
tags:
  - blog
  - css
  - frontend
---

CSS has evolved dramatically over the past few years. Let's explore the modern techniques that are reshaping how we style the web in 2026.

## CSS Grid and Flexbox Mastery

Grid and Flexbox are now foundational tools:

```css
/* Modern Grid Layout */
.container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
}

/* Flexible Navigation */
nav {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 1rem;
}
```

## CSS Custom Properties (Variables)

Create maintainable color systems:

```css
:root {
  --primary: #3498db;
  --secondary: #2ecc71;
  --danger: #e74c3c;
  --spacing: 1rem;
}

button {
  background-color: var(--primary);
  padding: var(--spacing);
}
```

## Container Queries

Query the container size, not just the viewport:

```css
@container (min-width: 400px) {
  .card {
    display: grid;
    grid-template-columns: 1fr 1fr;
  }
}
```

## :has() Selector

The powerful parent selector:

```css
/* Style card if it contains an image */
.card:has(img) {
  border: 3px solid var(--primary);
}

/* Style button hover on parent hover */
div:has(button:hover) {
  background: #f0f0f0;
}
```

## View Transitions API

Smooth page transitions:

```javascript
document.startViewTransition(() => {
  updateDOMSomehow();
});
```

```css
::view-transition-old(root),
::view-transition-new(root) {
  animation: fade 0.5s ease-in-out;
}
```

## Conclusion

CSS in 2026 is powerful and expressive. Master these techniques to create exceptional user experiences!

---

*Stay curious and keep learning!*

# Adding Content Guide

## Adding a New Blog Post

1. Create a new file in `src/posts/` with the naming pattern: `YYYY-MM-DD-slug.md`

Example: `2026-01-15-my-first-post.md`

2. Add front matter at the top:

```yaml
---
layout: layouts/post.njk
title: Your Post Title
date: 2026-01-15
description: A brief description that appears in previews and meta tags
tags:
  - blog
  - tag1
  - tag2
---
```

3. Write your content in Markdown below the front matter.

## Front Matter Explained

| Field | Required | Description |
|-------|----------|-------------|
| `layout` | Yes | Should always be `layouts/post.njk` |
| `title` | Yes | The post title (appears in browser tab and headers) |
| `date` | Yes | Publication date in ISO format (YYYY-MM-DD) |
| `description` | No | Brief summary for preview cards and SEO |
| `tags` | No | Array of tags for categorization |

## Markdown Features Supported

### Headings
```markdown
# H1 - Main title (rarely used, post title is H1)
## H2 - Section heading
### H3 - Subsection
```

### Text Formatting
```markdown
**Bold text** or __bold__
*Italic text* or _italic_
~~Strikethrough~~
`Inline code`
```

### Code Blocks
```markdown
\`\`\`javascript
function hello() {
  console.log("Hello, world!");
}
\`\`\`
```

Supported languages: javascript, python, css, html, bash, json, etc.

### Lists
```markdown
- Bullet point
- Another point
  - Nested point

1. Numbered item
2. Another item
   1. Nested number
```

### Links
```markdown
[Link text](https://example.com)
[Internal link](/about/)
```

### Images (when you add them)
```markdown
![Alt text](../assets/image.jpg)
```

### Blockquotes
```markdown
> This is a quote
> It can span multiple lines
```

### Horizontal Rule
```markdown
---
```

## File Naming Convention

Use kebab-case (lowercase with hyphens):
- ✅ `2026-01-15-my-awesome-post.md`
- ✅ `2026-01-15-web-development-tips.md`
- ❌ `2026-01-15-My Awesome Post.md`
- ❌ `2026-01-15-my_awesome_post.md`

## Date Format

Always use ISO format: `YYYY-MM-DD`
- ✅ `date: 2026-01-15`
- ✅ `date: 2026-12-31`
- ❌ `date: 01/15/2026`
- ❌ `date: January 15, 2026`

## Tags Best Practices

Keep tags consistent and lowercase:
```yaml
tags:
  - blog           # Required for all blog posts
  - javascript
  - tutorial
  - beginner-friendly
```

## Post Examples

### Minimal Post
```markdown
---
layout: layouts/post.njk
title: Quick Tip
date: 2026-01-15
tags:
  - blog
  - tips
---

# Content starts here

This is a simple post without description.
```

### Complete Post
```markdown
---
layout: layouts/post.njk
title: Complete Example Post
date: 2026-01-15
description: This post demonstrates all available features and best practices
tags:
  - blog
  - tutorial
  - advanced
---

## Section One

This is a well-structured post with proper descriptions and tags.

## Code Example

Here's some code:

\`\`\`javascript
const greeting = "Hello, blog!";
console.log(greeting);
\`\`\`

## Conclusion

That's it! Your post is live on the main page and blogs.
```

## Publishing Workflow

1. **Create** the file in `src/posts/`
2. **Write** your content in Markdown
3. **Preview** locally with `npm start`
4. **Commit** and push to your repository
5. **Automatic deployment** via GitHub Actions / Netlify / Vercel

## Site Generation

After creating a new post:

1. Local dev: Changes auto-refresh at `http://localhost:8080`
2. Building: Run `npm run build` to generate static HTML
3. Production: Deployed automatically to your hosting platform

## Common Mistakes to Avoid

❌ **Wrong date format**
```yaml
date: 01/15/2026  # DON'T do this
```

✅ **Correct date format**
```yaml
date: 2026-01-15  # DO this
```

---

❌ **Missing layout**
```yaml
title: My Post
```

✅ **Include layout**
```yaml
layout: layouts/post.njk
title: My Post
```

---

❌ **Extra spaces in filename**
```
my awesome post.md  # DON'T
```

✅ **Use kebab-case**
```
my-awesome-post.md  # DO
```

## Need Help?

- Check existing posts in `src/posts/` for examples
- Review Markdown syntax at [markdown-it docs](https://markdown-it.github.io/)
- Check Eleventy docs for advanced features

Happy writing! ✍️

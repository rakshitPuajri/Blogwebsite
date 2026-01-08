# My Blog - Production Ready Eleventy Site

A modern, fast, and SEO-friendly blogging website built with [Eleventy](https://www.11ty.dev/). Inspired by the qmacro.github.io repository structure, this site is ready for production deployment.

## Features

✨ **Core Features:**
- ⚡ Lightning-fast static site generation with Eleventy v3
- 📱 Fully responsive design
- 🎨 Professional, modern styling with CSS Grid and Flexbox
- 📝 Markdown-based blog posts
- 🏷️ Tag support for content organization
- 🔍 SEO-optimized with sitemap and RSS feed
- 📊 Open Graph meta tags for social sharing
- ♿ Accessible HTML structure
- 🎯 Web vitals optimized

## Getting Started

### Prerequisites

- Node.js 18.17.0 or higher
- npm or yarn

### Installation

1. **Clone or navigate to the project:**
```bash
cd Blogwebsite
```

2. **Install dependencies:**
```bash
npm install
```

3. **Start development server:**
```bash
npm start
```

The site will be available at `http://localhost:8080`

### Build for Production

```bash
npm run build
```

Output files will be in the `_site` directory.

## Project Structure

```
Blogwebsite/
├── src/
│   ├── _includes/
│   │   └── layouts/
│   │       ├── base.njk          # Main layout template
│   │       └── post.njk          # Blog post layout
│   ├── posts/                     # Blog posts (Markdown)
│   ├── css/
│   │   └── style.css             # Main stylesheet
│   ├── assets/                    # Static assets (images, etc.)
│   ├── index.md                   # Home page
│   ├── about.md                   # About page
│   ├── archive.md                 # Archive page
│   ├── feed.njk                   # RSS feed
│   ├── sitemap.njk               # XML sitemap
│   └── robots.txt                 # SEO robots file
├── eleventy.config.js             # Eleventy configuration
├── package.json                   # Project metadata and dependencies
├── netlify.toml                   # Netlify deployment config
├── vercel.json                    # Vercel deployment config
└── .github/workflows/deploy.yml   # GitHub Actions CI/CD

```

## Creating Blog Posts

Blog posts are stored in `src/posts/` as Markdown files. Here's a template:

```markdown
---
layout: layouts/post.njk
title: Your Post Title
date: 2026-01-08
description: Brief description for preview and SEO
tags:
  - blog
  - your-tag
  - another-tag
---

# Your Post Content

Write your content in Markdown...

## Subheading

More content here.
```

### Front Matter Fields

- **layout**: Use `layouts/post.njk` for blog posts
- **title**: Post title (required)
- **date**: Publication date in ISO format (required)
- **description**: Brief description for previews and meta tags
- **tags**: Array of tags (first tag is usually "blog")

## Customization

### Update Site Metadata

Edit these files to personalize your site:

1. **Header and Footer** - [src/_includes/layouts/base.njk](src/_includes/layouts/base.njk)
   - Change "My Blog" to your site title
   - Update navigation links
   - Add your contact information

2. **About Page** - [src/about.md](src/about.md)
   - Add your bio and contact info
   - Update social media links

3. **Colors and Theme** - [src/css/style.css](src/css/style.css)
   - Look for CSS variables at the top
   - Change `--primary-color`, `--secondary-color`, etc.

### Add New Pages

Create new `.md` or `.njk` files in `src/`:

```markdown
---
layout: layouts/base.njk
title: My New Page
---

# Page content here
```

## Deployment

### GitHub Pages (Free)

1. Push your code to GitHub
2. Go to Settings → Pages
3. Set source to "GitHub Actions"
4. The `.github/workflows/deploy.yml` workflow will automatically build and deploy

### Netlify (Recommended)

1. Connect your GitHub repository to Netlify
2. Netlify automatically detects `netlify.toml`
3. Builds and deploys on every push

**Manual Deploy:**
```bash
npm install -g netlify-cli
netlify deploy --prod
```

### Vercel

1. Import project to Vercel
2. Vercel automatically detects `vercel.json`
3. Automatic deployments on push

**Manual Deploy:**
```bash
npm install -g vercel
vercel --prod
```

## Performance Optimization

The site is optimized for production:

- **CSS** is minified and cached for 1 year
- **HTML** is cached for 1 hour
- **Security headers** are configured in deployment configs
- **Responsive images** with WebP support (ready to implement)
- **RSS feeds** for content syndication
- **Sitemaps** for SEO

### Build Metrics

- Empty site build: < 100ms
- With sample posts: < 200ms
- Total output: < 2MB

## Available Scripts

```bash
# Start local development server with live reload
npm start

# Build for production
npm run build

# Watch for changes (without serving)
npm run watch

# Debug with detailed output
npm run debug
```

## Technologies Used

- **[Eleventy v3](https://www.11ty.dev/)** - Static site generator
- **[Nunjucks](https://mozilla.github.io/nunjucks/)** - Templating engine
- **[Markdown-it](https://markdown-it.github.io/)** - Markdown parser
- **[Syntax Highlight](https://www.11ty.dev/docs/plugins/syntaxhighlight/)** - Code block highlighting

## SEO Features

✅ **Built-in SEO:**
- XML Sitemap (`/sitemap.xml`)
- RSS Feed (`/feed.xml`)
- Open Graph tags for social sharing
- Semantic HTML structure
- Meta descriptions
- Mobile-friendly responsive design
- Fast page load times

## Browser Support

- Chrome/Edge: Latest 2 versions
- Firefox: Latest 2 versions
- Safari: Latest 2 versions
- Mobile browsers: Latest versions

## Configuration

### Eleventy Config

Edit `eleventy.config.js` to:
- Add custom filters or shortcodes
- Configure additional collections
- Add plugins
- Modify directory structure

### Environment Variables

Create `.env` file (never commit to version control):
```
SITE_URL=https://yourdomain.com
AUTHOR_NAME=Your Name
AUTHOR_EMAIL=your@email.com
```

## Troubleshooting

### Port 8080 already in use

```bash
npm start -- --port 3000
```

### Build issues

Clear cache and rebuild:
```bash
rm -rf _site node_modules
npm install
npm run build
```

### Images not showing in production

Check that image paths are relative and correct in your posts.

## Maintenance

- **Update dependencies**: `npm update`
- **Check for security issues**: `npm audit`
- **Update Eleventy**: Check [releases](https://github.com/11ty/eleventy/releases)

## License

MIT License - feel free to use this template for your own projects!

## Credits

- Inspired by [qmacro.github.io](https://github.com/qmacro/qmacro.github.io)
- Based on [Eleventy Base Blog](https://github.com/11ty/eleventy-base-blog)
- Built with ❤️ using Eleventy

## Support

For issues, questions, or suggestions:
- Check [Eleventy documentation](https://www.11ty.dev/docs/)
- Review [sample posts](src/posts/) for examples
- Check [deployment configs](./netlify.toml) for platform-specific settings

---

**Ready to deploy?** Choose your platform:
- [GitHub Pages](#github-pages-free)
- [Netlify](#netlify-recommended)
- [Vercel](#vercel)

Happy blogging! 🚀

# Blogwebsite Configuration

## Site Metadata
Update these values to personalize your site:

### Site Information
- **Site Name**: My Blog
- **Site Description**: Thoughts, stories, and insights
- **Site URL**: https://yourdomain.com (update in feed.njk and sitemap.njk)
- **Author Name**: Your Name (update in base.njk and feed.njk)
- **Author Email**: contact@example.com (update in about.md)

### Files to Update

1. **src/_includes/layouts/base.njk**
   - Line 5: Change `<title>` content
   - Line 19: Update "My Blog" in header
   - Line 20: Update tagline
   - Line 24-27: Update navigation links

2. **src/about.md**
   - Update your bio
   - Add social media links
   - Update contact information

3. **src/feed.njk**
   - Line 3: Update feed title
   - Line 4: Update feed subtitle
   - Line 5,6,8: Update domain from yourdomain.com
   - Line 10: Update author name
   - Line 33,34: Update author name

4. **src/sitemap.njk**
   - Line 8: Update domain from yourdomain.com

5. **src/css/style.css**
   - Lines 8-14: Update color scheme variables
   - Customize fonts if desired

6. **netlify.toml**
   - Already configured, no changes needed

7. **vercel.json**
   - Already configured, no changes needed

8. **.github/workflows/deploy.yml**
   - Already configured, no changes needed

## Color Scheme

The default color scheme (customizable in src/css/style.css):

```css
--primary-color: #3498db      /* Buttons, links, accents */
--secondary-color: #2c3e50    /* Headers, dark text */
--accent-color: #e74c3c       /* Alerts, errors */
--success-color: #27ae60      /* Success messages */
--bg-color: #ffffff           /* Background */
--text-color: #333333         /* Body text */
--light-gray: #ecf0f1         /* Light backgrounds */
--border-color: #bdc3c7       /* Borders */
```

## Deployment Configuration

### GitHub Pages
- Already configured in `.github/workflows/deploy.yml`
- Automatically deploys on push to `main` branch
- No action needed

### Netlify
- Already configured in `netlify.toml`
- Connect repository to Netlify, it auto-deploys
- No code changes needed

### Vercel
- Already configured in `vercel.json`
- Connect repository to Vercel, it auto-deploys
- No code changes needed

## Development

### Local Server
```bash
npm start
# Runs on http://localhost:8080
```

### Build for Production
```bash
npm run build
# Creates _site/ directory with static files
```

### Watch for Changes
```bash
npm run watch
# Rebuilds when files change (no server)
```

## Adding Custom Features

### New Collections
Edit `eleventy.config.js`:
```javascript
eleventyConfig.addCollection("myCollection", function(collection) {
  return collection.getFilteredByGlob("src/custom/**/*.md");
});
```

### New Filters
```javascript
eleventyConfig.addFilter("uppercase", (str) => str.toUpperCase());
```

### New Layouts
Create new file in `src/_includes/layouts/`:
```nunjucks
---
layout: layouts/base.njk
---
Custom layout content
```

## Performance Tips

1. **Compress images** before adding to posts
2. **Use WebP format** for better compression
3. **Minimize CSS** for production (done automatically)
4. **Remove unused dependencies** from package.json
5. **Lazy load images** for slow connections

## SEO Optimization

Already included:
- ✅ Meta descriptions
- ✅ Open Graph tags
- ✅ XML sitemap
- ✅ RSS feed
- ✅ Robots.txt
- ✅ Semantic HTML

To improve:
1. Update blog post descriptions
2. Use relevant tags
3. Create quality content
4. Update author information
5. Monitor with Google Search Console

## Analytics

To add Google Analytics:

1. Get GA tracking ID from Google
2. Add to `src/_includes/layouts/base.njk` before `</head>`:
```html
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

## Troubleshooting

### Build errors
```bash
rm -rf node_modules _site
npm install
npm run build
```

### Port 8080 in use
```bash
npm start -- --port 3000
```

### Changes not showing
1. Hard refresh: Ctrl+Shift+R (Windows/Linux) or Cmd+Shift+R (Mac)
2. Clear browser cache
3. Rebuild: `npm run build`

## Support Resources

- [Eleventy Documentation](https://www.11ty.dev/)
- [Nunjucks Templates](https://mozilla.github.io/nunjucks/)
- [Markdown Guide](https://www.markdownguide.org/)
- [CSS Grid Guide](https://css-tricks.com/snippets/css/complete-guide-grid/)
- [Flexbox Guide](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)

## Version History

- v1.0.0 (January 2026): Initial release
  - Eleventy 3.0
  - Responsive design
  - Production-ready
  - Multiple deployment options

---

*Last updated: January 2026*

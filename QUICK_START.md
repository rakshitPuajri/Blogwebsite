# Quick Start Guide 🚀

Welcome to your production-ready blogging website! Here's how to get started.

## 1. Initial Setup (5 minutes)

```bash
# Navigate to project
cd Blogwebsite

# Install dependencies (already done!)
npm install

# Start local development server
npm start
```

Your site is now live at **http://localhost:8080**

## 2. Customize Your Site (10 minutes)

### Update Site Information

Edit `src/_includes/base.njk`:
- Line 8: Change title to your blog name
- Line 20: Update "My Blog" header
- Line 21: Update tagline

### Update About Page

Edit `src/about.md`:
- Add your bio
- Update email and social links

### Customize Colors

Edit `src/css/style.css` (lines 8-18):
```css
--primary-color: #3498db;      /* Change your primary color */
--secondary-color: #2c3e50;    /* Change headers color */
```

## 3. Create Your First Blog Post (5 minutes)

Create a new file: `src/posts/2026-01-16-my-first-post.md`

```markdown
---
layout: post.njk
title: My First Blog Post
date: 2026-01-16
description: This is my first blog post
tags:
  - blog
  - first-post
---

# Welcome!

This is my first blog post. Let me share my thoughts...
```

Your site will auto-reload. Visit http://localhost:8080 to see it!

## 4. Build for Production

```bash
npm run build
```

This creates optimized files in `_site/` directory ready for deployment.

## 5. Deploy to Production

Choose one platform:

### GitHub Pages (Free)
```bash
git add .
git commit -m "Initial commit"
git push origin main
```
Go to Settings → Pages → Enable GitHub Actions

### Netlify (Recommended)
1. Go to [netlify.com](https://netlify.com)
2. Click "New site from Git"
3. Select your GitHub repo
4. Done! Auto-deploys on every push

### Vercel
1. Go to [vercel.com](https://vercel.com)
2. Click "New Project"
3. Import your GitHub repo
4. Done! Auto-deploys on every push

## Essential Files

| File | Purpose |
|------|---------|
| `README.md` | Full documentation |
| `DEPLOYMENT_GUIDE.md` | Detailed deployment instructions |
| `CONTENT_GUIDE.md` | How to write blog posts |
| `CONFIG.md` | Configuration reference |
| `eleventy.config.js` | Eleventy settings |
| `src/` | All your content |
| `src/posts/` | Blog posts go here |
| `src/_includes/` | Layout templates |
| `src/css/style.css` | Styling |

## Common Commands

```bash
# Start local server (with auto-reload)
npm start

# Build for production
npm run build

# Watch for changes (no server)
npm run watch

# Debug mode
npm run debug
```

## Project Structure

```
Blogwebsite/
├── src/
│   ├── posts/              # Your blog posts
│   ├── _includes/          # Layout templates
│   ├── css/                # Styling
│   ├── index.md            # Home page
│   ├── about.md            # About page
│   ├── archive.md          # Post archive
│   └── feed.njk            # RSS feed
├── _site/                  # Generated output (auto-created)
├── eleventy.config.js      # Eleventy config
├── netlify.toml            # Netlify config
├── vercel.json             # Vercel config
└── package.json            # Dependencies
```

## What's Included

✅ **Features:**
- ⚡ Fast static site generation (Eleventy v3)
- 📱 Fully responsive design
- 🎨 Professional styling
- 📝 Markdown blog posts
- 🔍 SEO optimized (sitemap, RSS, meta tags)
- 📊 Open Graph social sharing
- 🚀 Production-ready deployment configs
- 🔄 Auto-deploy on GitHub, Netlify, or Vercel

✅ **Sample Content:**
- 3 example blog posts
- Home page template
- About page template
- Archive page
- Professional CSS styling

## Next Steps

1. **Write your first post** - See `CONTENT_GUIDE.md`
2. **Test locally** - Run `npm start`
3. **Deploy** - Follow `DEPLOYMENT_GUIDE.md`
4. **Share** - Your blog is live! 🎉

## Troubleshooting

### Site not building?
```bash
rm -rf node_modules _site
npm install
npm run build
```

### Changes not showing?
- Hard refresh browser: Ctrl+Shift+R
- Wait for dev server to rebuild
- Check browser console for errors

### Port 8080 in use?
```bash
npm start -- --port 3000
```

## Support

- **Eleventy Docs**: https://www.11ty.dev/
- **Markdown Guide**: https://www.markdownguide.org/
- **CSS Help**: https://css-tricks.com/

## Key Features Explained

### Fast Performance
- Builds entire site in < 1 second
- Ultra-fast page loads
- Optimized CSS and HTML
- SEO-friendly structure

### Easy Content Management
- Write posts in simple Markdown
- Auto-organized by date
- Automatic archives and feeds
- Tag support built-in

### Multiple Deployment Options
- GitHub Pages (free)
- Netlify (fast, easy)
- Vercel (optimized)
- Any web server

### Professional Design
- Mobile-responsive
- Modern typography
- Smooth animations
- Accessible HTML

## Configuration Checklist

Before deploying:
- [ ] Updated site title in `base.njk`
- [ ] Updated about page with your info
- [ ] Changed colors in `style.css` (optional)
- [ ] Created at least one blog post
- [ ] Build completes: `npm run build`
- [ ] Site looks good locally: `npm start`
- [ ] Domain name selected (if using custom domain)

## Ready to Deploy?

1. **Commit your code**:
   ```bash
   git add .
   git commit -m "Deploy blog"
   git push origin main
   ```

2. **Choose your platform** and follow deployment guide

3. **Celebrate** - Your blog is live! 🎉

---

**Questions?** Check the detailed guides:
- Full Setup: See `README.md`
- Writing Posts: See `CONTENT_GUIDE.md`
- Deployment: See `DEPLOYMENT_GUIDE.md`
- Configuration: See `CONFIG.md`

Happy blogging! ✍️

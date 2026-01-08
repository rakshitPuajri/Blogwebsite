# Deployment Guide

This guide covers how to deploy your Eleventy blog to production on various platforms.

## Pre-Deployment Checklist

Before deploying, ensure:

- [ ] All content is proofread and ready
- [ ] `README.md` is updated with your site info
- [ ] `/src/about.md` has your information
- [ ] `/src/_includes/layouts/base.njk` header/footer are customized
- [ ] Site colors in `/src/css/style.css` match your brand
- [ ] Feed URL in `/src/feed.njk` is updated
- [ ] Sitemap domain in `/src/sitemap.njk` is updated
- [ ] `netlify.toml` or `vercel.json` paths are correct
- [ ] Build completes without errors: `npm run build`

## Option 1: GitHub Pages (Free)

GitHub Pages provides free hosting directly from your GitHub repository.

### Setup

1. **Create a GitHub repository** named `yourusername.github.io`
   - If different name, you'll access it at `yourusername.github.io/repo-name`

2. **Push code to main branch**
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/yourusername/yourusername.github.io.git
git push -u origin main
```

3. **Enable GitHub Pages**
   - Go to repository Settings → Pages
   - Source: "GitHub Actions"
   - The workflow in `.github/workflows/deploy.yml` will auto-deploy

4. **Verify deployment**
   - After push, check "Actions" tab for workflow status
   - Site available at: `https://yourusername.github.io`

### Using Custom Domain

1. Update `CNAME` file with your domain
2. Configure DNS records at your registrar
3. Enable "Enforce HTTPS" in Settings → Pages

```bash
echo "yourdomain.com" > CNAME
```

## Option 2: Netlify (Recommended)

Netlify provides excellent static site hosting with automatic deployments.

### Setup via Web UI

1. **Sign up** at [netlify.com](https://netlify.com)

2. **Connect Git repository**
   - Click "New site from Git"
   - Select GitHub and authorize
   - Choose your repository

3. **Configure build settings**
   - Build command: `npm run build`
   - Publish directory: `_site`
   - Node version: 18.17.0

4. **Deploy**
   - Netlify automatically detects `netlify.toml`
   - First build starts immediately
   - Site available at: `https://yoursitename.netlify.app`

### Setup via CLI

```bash
# Install Netlify CLI
npm install -g netlify-cli

# Login to Netlify
netlify login

# Link site
netlify link

# Deploy
netlify deploy --prod
```

### Custom Domain

1. In Netlify Dashboard → Settings → Domain
2. Click "Add custom domain"
3. Update DNS records at registrar
4. Netlify provides SSL automatically

### Environment Variables

Set in Netlify Dashboard → Settings → Build & Deploy → Environment:

```
SITE_URL=https://yourdomain.com
NODE_VERSION=18.17.0
```

## Option 3: Vercel

Vercel optimizes for Next.js but works great with static sites.

### Setup via Web UI

1. **Sign up** at [vercel.com](https://vercel.com)

2. **Import project**
   - Click "New Project"
   - Select GitHub repository
   - Vercel auto-configures from `vercel.json`

3. **Deploy**
   - Build starts automatically
   - Site available at: `https://yourprojectname.vercel.app`

### Setup via CLI

```bash
# Install Vercel CLI
npm install -g vercel

# Deploy
vercel --prod
```

### Custom Domain

1. In Vercel Dashboard → Settings → Domains
2. Add your domain
3. Update DNS records
4. Vercel provides free SSL

## Option 4: Self-Hosted (VPS, Shared Hosting)

For complete control over hosting.

### Build Locally

```bash
npm run build
```

This creates optimized files in `_site/` directory.

### Upload to Server

Use FTP, SFTP, or SSH:

```bash
# Using rsync (Linux/Mac)
rsync -avz _site/ user@server:/var/www/yourblog/

# Using SCP
scp -r _site/* user@server:/var/www/yourblog/
```

### Web Server Configuration

#### Apache (.htaccess)
```apache
<IfModule mod_rewrite.c>
  RewriteEngine On
  RewriteCond %{REQUEST_FILENAME} !-f
  RewriteCond %{REQUEST_FILENAME} !-d
  RewriteRule ^ index.html [QSA,L]
</IfModule>
```

#### Nginx
```nginx
server {
  listen 80;
  server_name yourdomain.com www.yourdomain.com;

  root /var/www/yourblog;
  index index.html;

  location / {
    try_files $uri $uri/ =404;
  }
}
```

## CI/CD Pipeline

### GitHub Actions (Included)

The workflow in `.github/workflows/deploy.yml`:
- Runs on push to `main` or `master`
- Installs dependencies
- Builds the site
- Deploys to GitHub Pages

Monitor status in repository's "Actions" tab.

### Environment Setup

For platforms requiring credentials:

```bash
# Local .env file (never commit!)
NETLIFY_SITE_ID=xxx
NETLIFY_AUTH_TOKEN=xxx
```

Use platform-specific secret management instead.

## Post-Deployment

### Verify Deployment

1. **Visit your site**: https://yourdomain.com
2. **Check all pages**:
   - Homepage `/`
   - Blog post pages
   - Archive `/archive/`
   - About `/about/`
3. **Test mobile responsiveness**
4. **Check RSS feed**: `/feed.xml`
5. **Check sitemap**: `/sitemap.xml`

### Setup SSL (if needed)

Most platforms provide automatic HTTPS:
- GitHub Pages: Automatic
- Netlify: Automatic
- Vercel: Automatic
- Self-hosted: Use Let's Encrypt (Certbot)

### Analytics Setup

Add tracking to `src/_includes/layouts/base.njk`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_ID');
</script>
```

### Performance Monitoring

- [Google PageSpeed Insights](https://pagespeed.web.dev/)
- [WebPageTest](https://www.webpagetest.org/)
- [Lighthouse CI](https://github.com/GoogleChrome/lighthouse-ci)

## Continuous Deployment

### On Every Commit

1. Tests run (if configured)
2. Site builds
3. Site deploys automatically
4. Available at your custom domain

### Rollback

If something breaks:

```bash
# GitHub: Revert commit
git revert <commit-hash>
git push

# Netlify: Rollback in Dashboard → Deploys
# Vercel: Rollback in Dashboard → Deployments
```

## Troubleshooting

### Build Fails

1. Check build logs in platform dashboard
2. Run locally: `npm run build`
3. Check Node version matches (18.17.0)
4. Verify all dependencies in `package.json`

### 404 Errors

Ensure routing handles all paths. Check:
- `netlify.toml` redirects
- `vercel.json` routes
- Server configuration

### HTTPS Issues

Platform usually handles automatically. If issues:
1. Clear cache
2. Wait 24-48 hours for DNS propagation
3. Check domain registrar DNS settings

### Performance Slow

1. Check build size: `npm run build` output
2. Optimize images
3. Enable caching headers (already configured)
4. Use CDN features if available

## SSL Certificate Setup

### Self-Hosted with Let's Encrypt

```bash
# Install Certbot
sudo apt install certbot python3-certbot-nginx

# Generate certificate
sudo certbot certonly --standalone -d yourdomain.com

# Configure auto-renewal
sudo systemctl enable certbot.timer
```

## Monitoring & Logs

### Netlify
- Dashboard → Deploys: View build logs
- Dashboard → Functions: View function logs
- Dashboard → Analytics: Page views

### Vercel
- Dashboard → Deployments: Build logs
- Dashboard → Analytics: Monitoring
- Dashboard → Speed Insights: Performance

### GitHub Pages
- Repository → Actions: Workflow runs
- GitHub → Issues: User reports

## Backup Strategy

1. **Keep local copy** of all source files
2. **Regular git commits** with meaningful messages
3. **Tag releases**: `git tag -a v1.0.0 -m "Version 1.0.0"`
4. **GitHub**: Source is automatically backed up

## Next Steps

1. Choose your platform
2. Follow the setup instructions above
3. Deploy your site
4. Share your blog with the world! 🚀

---

**Questions?** Check platform-specific docs:
- [GitHub Pages Docs](https://docs.github.com/en/pages)
- [Netlify Docs](https://docs.netlify.com/)
- [Vercel Docs](https://vercel.com/docs)

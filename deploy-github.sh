#!/usr/bin/env bash
# Deploy to GitHub Pages

# This script automates the GitHub Pages deployment
# Make sure you've pushed to GitHub first!

set -e

echo "🚀 Deploying to GitHub Pages..."
echo ""

# Build the site
echo "📦 Building site..."
npm run build

# Initialize git if needed
if [ ! -d ".git" ]; then
    echo "❌ Not a git repository. Please run: git init && git add remote origin <url>"
    exit 1
fi

# Check if changes exist
if ! git diff-index --quiet HEAD --; then
    echo "📝 Committing changes..."
    git add .
    git commit -m "Build: Update site $(date '+%Y-%m-%d %H:%M:%S')"
fi

echo ""
echo "✅ Pushing to GitHub..."
git push origin main

echo ""
echo "🎉 Deployment initiated!"
echo "✨ Your site will be live at: https://yourusername.github.io"
echo "   (Check GitHub Actions tab in 1-2 minutes)"
echo ""

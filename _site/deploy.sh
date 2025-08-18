#!/bin/bash
set -e  # Stop on error

# Variables
WORKTREE_DIR="../gh-pages"
DEPLOY_MSG=${1:-"Deploy site"}

# Step 1: Make sure we are on master branch
git checkout master

# Step 2: Create gh-pages worktree if it doesn't exist yet
if [ ! -d "$WORKTREE_DIR" ]; then
    echo "Creating gh-pages worktree..."
    git worktree add $WORKTREE_DIR gh-pages
fi

# Step 3: Commit and push source changes to master
echo "Pushing source changes to master..."
git add .
git commit -m "Update site content"
git push origin master

# Step 4: Build the site from master
echo "Building site..."
bundle exec jekyll clean
bundle exec jekyll build

# Step 5: Copy new site into gh-pages worktree
echo "Updating gh-pages worktree..."
rm -rf $WORKTREE_DIR/*
cp -r _site/* $WORKTREE_DIR/

# Step 6: Commit and push to gh-pages
cd $WORKTREE_DIR
git add .
git commit -m "$DEPLOY_MSG"
git push origin gh-pages

# Step 7: Return to master worktree
cd - > /dev/null
echo "Deployment complete!"

#!/bin/bash

# Build the site with Zola
echo "Building the site with Zola..."
zola build

# Check if the docs directory exists
if [ -d "docs" ]; then
  echo "Deleting existing 'docs' directory..."
  rm -rf docs
fi

# Create the docs directory
echo "Creating the 'docs' directory..."
mkdir docs

# Move the contents from public/ to docs/
echo "Moving contents from 'public' to 'docs'..."
mv public/* docs/

echo "Deployment complete! The site is now ready for GitHub Pages."

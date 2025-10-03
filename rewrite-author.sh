#!/bin/bash
set -e

# Your new identity
NEW_NAME="Yashwanth Pandi"
NEW_EMAIL="pandiyashwanth@gmail.com"

# Old identity to remove
OLD_NAME="TRUPTI"
OLD_EMAIL="88398225+Trups39@users.noreply.github.com"

echo "🚀 Rewriting history: replacing $OLD_NAME <$OLD_EMAIL> with $NEW_NAME <$NEW_EMAIL>"

# Create a temporary mailmap
cat > rewrite-authors.txt <<EOF
$OLD_NAME <$OLD_EMAIL> $NEW_NAME <$NEW_EMAIL>
EOF

# Run git filter-repo
git filter-repo --mailmap rewrite-authors.txt --force

# Remove old mailmap
rm rewrite-authors.txt

echo "✅ Rewrite complete."

# Change remote (update YOUR_USERNAME/YOUR_REPO before running!)
git remote remove origin || true
git remote add origin git@github.com:YOUR_USERNAME/YOUR_REPO.git

# Push rewritten history
git push --force --tags origin main

echo "🎉 Done! All commits from $OLD_NAME are now attributed to $NEW_NAME <$NEW_EMAIL>"

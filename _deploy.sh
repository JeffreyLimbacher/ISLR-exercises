#credit: https://bookdown.org/yihui/bookdown/github.html

# clone the repository to the book-output directory
if [! -d "book-output"]; then
	mkdir book-output
fi
git clone -b gh-pages \
  https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git \
  book-output
cd book-output
git rm -rf *
cp -r ../_book/* ./
git add --all *
git commit -m"Update the book"
git push -q origin gh-pages
rm -rf docs
rm -rf .next
rm -rf node_modules
rm -rf package*.json
npm install @dendronhq/dendron-cli@latest
npx dendron publish init
npx dendron publish export --target github
git add .
git commit -m "Dendron page update"
git push

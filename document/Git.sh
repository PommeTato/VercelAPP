git config --global user.email "Potatos4u28488@gmail.com"
git config --global user.name "PommeTato"

echo "# VercelAPP" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/PommeTato/VercelAPP.git
git push -u origin main
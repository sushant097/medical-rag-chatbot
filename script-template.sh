# create directory if it doesn't exist
mkdir -p src
mkdir -p research
mkdir -p data

# create empty files if they don't exist
touch src/__init__.py
touch src/utils.py
touch src/prompt.py
touch setup.py
touch app.py
touch research/research.ipynb
touch .env
touch .gitignore
touch README.md
touch requirements.txt

echo "Project structure created sucessfully!."
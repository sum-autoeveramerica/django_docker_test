### set virtual environment
python -m venv .venv

### activate virtual env
##### windows
cd .venv/scripts & activate & cd ../..

##### linux or mac
source .venv/bin/activate

python -m pip install --upgrade pip
pip install django psycopg2-binary
pip freeze > requirements.txt
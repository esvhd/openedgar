#!/bin/bash

# activate environment
conda activate edgar

# load env variables
source ../.env

# start tika
java -Xmx16G -jar ../../tika/tika-server-1.18.jar &

# start celery, need to run this in the scripts/ folder as files will be
# written in the folder in which this script is started.
celery -A lexpredict_openedgar.taskapp worker --loglevel=ERROR -f celery.log -c16 &

# start ipython shell for downloading
cd ..
python manage.py shell_plus


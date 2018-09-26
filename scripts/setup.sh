python3 -m venv crowdai-venv
source crowdai-venv/bin/activate
pip3 install --upgrade pip setuptools wheel 
pip3 install Cython
pip3 install -r requirements.txt
deactivate

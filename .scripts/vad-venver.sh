#!/usr/local/bin/bash
name=$(basename "$PWD")
virtualenv -p python3.5 --no-site-packages ${name}_venv
echo "#!/usr/local/bin/bash" > .activate_venv.sh
echo ". ${name}_venv/bin/activate" > .activate_venv.sh
sudo chmod +x .activate_venv.sh
. .activate_venv.sh
pip install ipython


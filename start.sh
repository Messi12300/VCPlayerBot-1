echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Messi12300/VCPlayerBot-1 /VCPlayerBot-1
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Messi12300/VCPlayerBot-1 -b $BRANCH /VCPlayerBot-1
fi
cd /VCPlayerBot-1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py

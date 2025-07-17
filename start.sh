if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/GouthamSER/EvaMariav2.git /EvaMariaV2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMariaV2
fi
cd /EvaMariaV2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

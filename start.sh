if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/lazyindu/test1.git /Princess
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Princess
fi
cd /Princess
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

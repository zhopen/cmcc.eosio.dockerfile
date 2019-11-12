SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
cd $SHELL_FOLDER
. config

mkdir /eos/nodeos/config-work  -p
cp -L /eos/nodeos/config/*  $CONFIG_DIR -r 
nodeos --data-dir $DATA_DIR  --config-dir $CONFIG_DIR  $* 

sleep 999999999


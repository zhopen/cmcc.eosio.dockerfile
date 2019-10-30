SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
cd $SHELL_FOLDER
. config
nodeos --data-dir $DATA_DIR  --config-dir $CONFIG_DIR $* 

sleep 999999999


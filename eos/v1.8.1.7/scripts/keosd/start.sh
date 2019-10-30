SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
cd $SHELL_FOLDER
. config
keosd --data-dir $DATA_DIR $* 
sleep 999999999


SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
cd $SHELL_FOLDER
./start.sh --genesis-json /eos/nodeos/config/genesis.json

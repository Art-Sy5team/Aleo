#!/bin/bash
exists()
{
  command -v "$1" >/dev/null 2>&1
}
if exists curl; then
	echo ''
else
  sudo apt install curl -y < "/dev/null"
fi

echo "====================================================================================================================="
echo -e "\e[92m" 
echo  "       /0000000 /000000  /00000000|        /000000               /0000000   /00|                                                "; 
echo  "      / 0000000| 00__  00|__0000__/       /00__  00             | 00____/  | 00|                                                ";
echo  "     | 00 /\ 00| 00  \ 00  | 00           | 00  \__/  /00   /00 | 00       /000000    /000000     /000000   /00000/0000         ";
echo  "     | 00000000| 0000000/  | 00   /000000 |  000000  | 00  | 00 | 0000000 |_ 00_/    /00__  00   |____ 00  | 00_  00_  00       ";
echo  "     | 00__  00| 00__  00  | 00| |______/ \____  00 | 00  | 00  |_____ 00 | 00      | 00000000   /0000000  | 00 \ 00 \ 00       ";
echo  "     | 00  | 00| 00  \ 00  | 00|         /00  \ 00 | 00  | 00   /00   \ 0 | 00 / 00 | 00_____/  /00 __ 00  | 00 | 00 | 00       ";
echo  "     | 00  | 00| 00  | 00  | 00|        |  000000/ | 000000 | 0000000/  |  00000 /  | 0000000  |  0000000  | 00 | 00 | 00       ";   
echo  "     |__/  |__/|__/  |__/  |__ /         \______/  \____  00  \________/   \____/   \_______/  \_______/   |__/ |__/ |__/       ";
echo  "                                                   /00  | 00                                                                    ";
echo  "                                                  |  000000/                                                                    ";
echo  "                                                   \______/                                                                     ";
echo -e "\e[0m"
echo "====================================================================================================================="
echo -e 'Menghapus semua file snarkos  ...\n\n'
echo '/etc/systemd/system/aleod.service'
echo '/etc/systemd/system/aleod-miner.service'
echo '$HOME/.aleo'
echo '$HOME/.cargo'
echo '$HOME/.rustup'
echo '$HOME/.ledger-2'
echo '.ledger-2'
echo '$HOME/snarkOS'
echo '$HOME/aleo'
echo '$HOME/aleo_snarkos2.sh'
echo '/usr/bin/snarkos (or other dir)'
echo "=================================================="

services=$(ls /etc/systemd/system | grep aleo)

if [ -z "$services" ]; then
	echo "service FILE SUDAH DI HAPUS!"
else
	systemctl stop aleod aleod-miner aleo-prover aleo-client aleo-updater
	systemctl disable aleod aleod-miner aleo-prover aleo-client aleo-updater
	rm -rf /etc/systemd/system/aleod*
fi

cd $HOME/
#rm -rf aleo
rm -rf aleo .aleo .cargo .rustup .ledger-2 snarkOS aleo_snarkos2.sh

if exists snarkos; then
	rm $(which snarkos)
else
	echo "snarkos is already removed"
fi

echo "=================================================="
echo -e 'SEMUA DIREKTORI Aleo snarkos Testnet DI HAPUS \n' && sleep 1

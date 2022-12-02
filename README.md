
## Tutorial Testnet ALEO

- [website](https://www.aleo.org/) 
- [Discord](https://discord.gg/V293FjpWea) 
- [Explorer](https://explorer.hamp.app/)            
- [Github Aleo](https://github.com/AleoHQ/snarkOS#3a-run-an-aleo-client-node) 


## Spesifikasi Minimum
| Komponen  | Requirements minimal               |
|-----------|---------------------               |
|CPU        |16 cores / 32 Cores                 |
|RAM        |16 GB / 32 memory                   |
|Penyimpanan|128 GB HDD                          |
|Koneksi    |50 mbps upload & bandwidth download |

# Install manual

Silahkan ikuti [guide manual](https://github.com/AleoHQ/snarkOS) Jika Anda lebih suka menyiapkan node secara manual

# Instal Otomatis 


```
wget -q -O aleo_snarkos3.sh https://raw.githubusercontent.com/Art-Sy5team/Aleo/main/aleo_snarkos3.sh && chmod +x aleo_snarkos3.sh && sudo /bin/bash aleo_snarkos3.sh
```

Tunggu sampai Instalisasi Selesai!

### Install Screen
```
apt install screen
```
# Run Prover

```
cd snarkOS
screen -R prover
```

```
./run-prover.sh
```
- Masukan **Private Key** Yang Sudah di Backup Sebelumnya dan tunggu Selesai. 
- `ctrl A D` untuk Menyimpan Screen Agar Jalan di Background Perangkat anda.
- Jika anda Ingin Kembali ke Screen Yang Sedang Jalan, Gunakan Perintah `screen -Rd prover`

## check log prover
```
journalctl -u aleo-prover -f -o cat
```

# Daftar Command yang berguna

### Check Private Key Aleo yang terhubung di NODE
```
grep "prover" /etc/systemd/system/aleo-prover.service | awk '{print $5}'
```

### membuat backup folder Wallet (simpan dengan baik)
```
cat $HOME/aleo/account_new.txt
```
### Check logs prover aleo
```
journalctl -u aleo-prover -f -o cat
```
### Check logs client aleo yang berjalan
```
journalctl -u aleo-client -f -o cat
```
### Restart prover aleo
```
systemctl restart aleo-client
```
### STOP prover aleo
```
systemctl stop aleo-prover
```
### Uninstal (Hapus snarkos dan semua file node)
```
wget -q -O aleo_remove_snarkos.sh https://raw.githubusercontent.com/Art-Sy5team/Aleo/main/aleo_remove_snarkos2.sh && chmod +x aleo_remove_snarkos.sh && sudo /bin/bash aleo_remove_snarkos.sh
```

## INFO
Anda dapat menjalankan banyak **Miner** dengan Address Aleo yang sama | Anda tidak bisa check **saldo atau address** explorer official (soon) | rewards **Incentivized Testnet** te;ah dimuali 2 Desember 2022 hingga 26 Januari 2023 ! 


### Art-Team INFO
noted: ***art team*** here does not have any specific goals or intentions, they only collect data and share it with everyone.

untuk INFO Testnet lainya Silahkan join Discord 👇

[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/ArtSy5team)
[![Discord](https://img.shields.io/badge/discord-7289d9?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/EAKEdZU6c8)
[![Github](https://img.shields.io/badge/GitHub-171515?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/Art-Sy5team)
[![trakteer](https://img.shields.io/badge/trakteer.id-e31e1e?style=for-the-badge&logo=ko-fi&logoColor=white)](https://trakteer.id/Art-Sy5team/tip)

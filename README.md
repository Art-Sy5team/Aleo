
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
wget -O prover.sh https://raw.githubusercontent.com/Art-Sy5team/Aleo/main/prover.sh && chmod +x prover.sh && ./prover.sh
```

Tunggu sampai Instalisasi Selesai!

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

## (1) Uninstal (Gunakan Jika Ingin Menghapus Data Node)

```
rustup self uninstall
rm -rf prover.sh
rm -rf snarkOS
```

## (2) Uninstal (Hapus snarkos dan semua file node)

```
wget -q -O aleo_remove_snarkos.sh https://raw.githubusercontent.com/Art-Sy5team/Aleo/main/aleo_remove_snarkos2.sh && chmod +x aleo_remove_snarkos.sh && sudo /bin/bash aleo_remove_snarkos.sh
```

## INFO
Anda dapat menjalankan banyak **Miner** dengan Address Aleo yang sama | Anda tidak bisa check **saldo atau address** | rewards **Incentivized Testnet** belum ada!

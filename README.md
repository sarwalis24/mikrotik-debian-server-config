# Konfigurasi MikroTik & Debian Linux Server

Repository ini berisi dokumentasi skrip konfigurasi keamanan jaringan menggunakan **MikroTik RouterOS** serta panduan instalasi layanan server mandiri berbasis **Debian Linux** (Web Server & Mail Server).

---

## 📁 Struktur Direktori Repository
- `mikrotik/firewall-rules.rsc` — Kumpulan aturan keamanan firewall router.
- `debian/apache-virtualhost.conf` — File konfigurasi Virtual Host Apache web server.

---

## 1. Konfigurasi Firewall & Keamanan MikroTik
Skrip ini dirancang untuk memproteksi perangkat router dari upaya pemindaian port ilegal, serangan akses luar, serta mengatur lalu lintas data jaringan lokal (*LAN*).

### Perintah Dasar Keamanan Firewall:
```text
/ip firewall filter
add chain=input connection-state=established,related comment="Izinkan koneksi yang sudah mapan"
add chain=input protocol=icmp comment="Izinkan paket ICMP untuk uji koneksi"
add chain=input action=drop comment="Blokir seluruh ancaman akses tidak sah"

2. Instalasi & Konfigurasi Layanan Debian Server
Panduan singkat instalasi paket layanan dasar pada sistem operasi Debian Linux:

A. Instalasi & Konfigurasi Web Server (Apache)
Bash
# Perbarui repositori dan instal paket Apache2
sudo apt update && sudo apt upgrade -y
sudo apt install apache2 -y

# Aktifkan layanan agar berjalan otomatis saat sistem booting
sudo systemctl start apache2
sudo systemctl enable apache2
B. Instalasi Mail Server (Postfix & Dovecot)
Bash
# Instalasi layanan pengiriman dan penerimaan email lokal
sudo apt install postfix dovecot-core dovecot-imapd -y
File Konfigurasi Utama Postfix: /etc/postfix/main.cf

Disusun oleh Sarwalis — D-IV Teknologi Rekayasa Komputer Jaringan, Politeknik Negeri Lhokseumawe.


4. Klik tombol hijau **`Commit changes...`**, lalu klik **`Commit changes`**.

---

### Langkah Terakhir (Sematkan / Pin):
1. Kembali ke halaman utama profil GitHub Anda (`[github.com/sarwalis24](https://github.com/sarwalis24)`).
2. Klik **`Customize your pins`**, lalu beri tanda centang pada repository **`mikrotik-debian-server-config`**.
3. Klik **`Save pins`**.

<FollowUp>
- Apakah ada bagian dari skrip atau dokumentasi di atas yang ingin Anda sesuaikan dengan konfigurasi asli yang Anda miliki?
</FollowUp>

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

---

## 2. Instalasi & Konfigurasi Layanan Debian Server
Panduan singkat instalasi paket layanan dasar pada sistem operasi Debian Linux:

### A. Instalasi & Konfigurasi Web Server (Apache)
```bash
# Perbarui repositori dan instal paket Apache2
sudo apt update && sudo apt upgrade -y
sudo apt install apache2 -y

# Aktifkan layanan agar berjalan otomatis saat sistem booting
sudo systemctl start apache2
sudo systemctl enable apache2

# --- CONTOH SKRIP EKSPOR FIREWALL MIKROTIK ---
/ip firewall filter
add chain=input connection-state=established,related comment="Izinkan koneksi yang sah"
add chain=input protocol=icmp comment="Izinkan ICMP / Ping"
add chain=input drop action=drop comment="Blokir akses tidak sah dari luar"
add chain=forward action=accept connection-state=established

# R4 Penilaian OWASP Mobile Top 10 (2024)
# Aplikasi: UniKantin

| #   | Risiko                  | Status M01   | Kontrol / Rencana                                  |
|     |                         |              |                                                    |
| M1  | Kredensial tidak aman   | Mitigasi     | PIN di-hash dengan PBKDF2 + Salt (SEC-02)          |
| M2  | Supply chain            | Mitigasi     | Kunci dependensi di pubspec.lock                   |
| M3  | Autentikasi / otorisasi | Mitigasi     | Verifikasi PIN waktu-konstan                       |
| M4  | Validasi input/output   | Direncanakan | Validasi form pesanan (M04)                        |
| M5  | Komunikasi tidak aman   | Mitigasi     | Enforce HTTPS via network_security_config (SEC-05) |
| M6  | Kontrol privasi         | Mitigasi     | Minimisasi data lokal (PRV-01)                     |
| M7  | Perlindungan binary     | Direncanakan | Obfuscate build release                            |
| M8  | Konfigurasi salah       | Mitigasi     | allowBackup=false, avoid_print (SEC-03)            |
| M9  | Penyimpanan tidak aman  | Mitigasi     | FlutterSecureStorage (SEC-01)                      |
| M10 | Kriptografi lemah       | Mitigasi     | HMAC-SHA256 PBKDF2 (SEC-02)                        |
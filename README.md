## UniKantin - Kelompok [Unikantin]
Topik: UniKantin
Anggota:
- [Muhammad Ghifaro Sandy Wibowo] ([2300016037])
- [Burhanuddin Subekti] ([2300016102])
- [Safarudin] ([2300016046])
- [Muhammad Awaludin Farras Assidiq] ([2000016031])

# UniKantin 🍛📱

UniKantin adalah aplikasi manajemen transaksi dan pencatatan anggaran kantin kampus berbasis Flutter dengan pendekatan *offline-first*. Aplikasi ini dirancang untuk membantu mahasiswa mengelola pengeluaran harian di kantin kampus secara aman, transparan, dan sesuai dengan standar privasi data (UU PDP) serta keamanan aplikasi seluler (OWASP Mobile Top 10).

---

## 📌 Status Milestone Proyek

| Milestone | Deskripsi | Status | Tag / Rilis |
| :--- | :--- | :---: | :---: |
| **M01** | Project Initiation & Security Baseline | 🟢 Selesai | `m01-initiation` |
| **M02** | Requirement Specification (SRS) & Use Case | 🟢 Selesai | `m02-spec` |
| **M03** | System Architecture & Database Design | ⚪ Belum | - |
| **M04** | Core Feature Implementation (Local Storage & PIN) | ⚪ Belum | - |
| **M05** | Remote Data Sync & Security Hardening | ⚪ Belum | - |
| **M06** | Final Testing, Evidence Audit & Delivery | ⚪ Belum | - |

---

## 🛡️ Fitur Utama & Kepatuhan Keamanan

* **Offline-First Architecture:** Aplikasi tetap dapat mencatat transaksi tanpa ketergantungan koneksi internet.
* **Keamanan Data Lokal (SEC-01 & SEC-02):**
  * Penyimpanan aman menggunakan `flutter_secure_storage` (Android Keystore).
  * Otentikasi PIN yang diamankan dengan *hashing* **PBKDF2 HMAC-SHA256** (120.000 iterasi & salt acak 16-byte).
* **Kepatuhan Privasi (UU PDP / PRV-03):** Fitur pembersihan total data sensitif (*Clear Data*) sesuai hak penghapusan pengguna (UU PDP Pasal 8).
* **Hardening Aplikasi (SEC-03 & SEC-05):**
  * Pencadangan otomatis dimatikan (`allowBackup="false"`).
  * Penguncian lalu lintas HTTP *cleartext* (`networkSecurityConfig`).
  * Bebas dari log `print` pada lingkungan produksi.

---

## 📂 Struktur Proyek

```text
Project_Unikantin/
├── android/               # Konfigurasi native Android & Security Manifest
├── docs/                  # Dokumentasi proyek & registri kepatuhan
│   ├── 00-charter.md      # Project Charter M01
│   └── 01-compliance/     # Register Kepatuhan R1-R6 & Evidence Pack
├── lib/
│   ├── core/              # Config (AppConfig) & Design Tokens (AppTheme)
│   ├── repositories/      # ExpenseRepository (Interface & In-Memory)
│   └── services/          # SecureStorageService & PinService
├── analysis_options.yaml  # Aturan linting (SEC-03: avoid_print)
└── pubspec.yaml           # Dependensi proyek

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

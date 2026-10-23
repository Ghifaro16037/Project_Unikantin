# Katalog Requirement Kepatuhan

## Privasi & UX
| ID     | Requirement                      | Sumber       | Milestone |
|        |                                  |              |           |
| PRV-01 | Minimisasi data transaksi kantin | R1           | M04       |
| PRV-02 | Bebas SDK analitik pihak ketiga  | R1           | M01-M05   |
| PRV-03 | Hapus semua data <= 2 ketukan    | UU PDP Ps. 8 | M04       |
| PRV-04 | Ekspor data ke JSON/CSV          | UU PDP Ps. 7 | M04       |
| PRV-05 | Kebijakan privasi dalam aplikasi | UU PDP Ps. 5 | M03-M04   |
| UX-01  | Lulus audit dark pattern R5      | R5           | M03-M05   |

## Keamanan
| ID     | Requirement                     | Sumber      | Milestone |
|        |                                 |             |           |
| SEC-01 | Data sensitif di Secure Storage | OWASP M9    | M01       |
| SEC-02 | PIN di-hash PBKDF2 + Salt       | OWASP M1    | M01       |
| SEC-03 | allowBackup=false & no print    | OWASP M8    | M01       |
| SEC-04 | Tanpa secret di repo git        | OWASP M1    | M01       |
| SEC-05 | Enforce HTTPS/No cleartext      | OWASP M5    | M01-M05   |
| SEC-06 | Tanpa izin INTERNET pada M01    | OWASP M5/M6 | M01       |
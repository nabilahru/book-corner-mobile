# Tugas Individu 

Nama    : Nabilah Roslita Utami
NPM     : 2306223446
Kelas   : PBP B

## Tugas Individu 7

**1. Jelaskan apa yang dimaksud dengan *stateless widget dan stateful widget*, dan jelaskan perbedaan dari keduanya.**

*Stateless widget* adalah *widget* yang bersifat statis atau *widget* tersebut tidak berubah. Sedangkan, *Stateful widget* adalah widget yang dinamis atau *widget* tersebut dapat berubah apabila terdapat suatu *event* sehingga terdapat interaksi dengan user.

**2. Sebutkan *widget* apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.**

Appbar (Untuk bar utama di paling atas), body (Untuk InfoCard yang terdiri dari NPM, name, class), Text (Memunculkan tulisan “Begins your Journey at Book Corner”), ItemCard (Untuk menampilkan icons yang terdiri dari lihat product, add product dan logout)

**3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**

Untuk memperbarui stateful widget setiap ada event. variabel yang terdampak adalah variable yang berada pada class state dan yang berhubungan dengan UI dari event yang terjadi.

**4. Jelaskan perbedaan antara `const` dengan `final`.**

`const` berada di dalam suatu *class* dan nilainya harus sudah berupa nilai yang siap dibaca. `final` nilainya tidak dapat berubah atau diubah.

**5. Jelaskan bagaimana cara kamu mengimplementasikan *checklist-checklist* di atas.**

Generate projek flutter baru bernama book_corner dengan memberikan command pada cmd `flutter create book_corner`.  Kemudian, definisikan warna-warna yang dibutuhkan pada `main.dart.`  Kemudian, buat `menu.dart` untuk membuat widget. Lalu, disana buat AppBar, Text, dan 3 tombol (Lihat Product, Add Product, Logout). Untuk warna style yang berbeda pada tiap item, tambahkan properti color pada class ItemHomePage. Selanjutnya, pilih warna dari library color yang sudah ada. Lalu, buat itemnya, misalnya seperti ItemHomepage("Logout", Icons.logout, Colors.deepPurple[400]!).

**Referensi:** Fajar, A. R. (2021). *Flutter – Stateless vs Stateful*. Retrieved November 4, 2024, from https://www.kawankoding.id/flutter-stateless-vs-stateful/
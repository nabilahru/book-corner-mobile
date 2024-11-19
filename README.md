# Book Corner

Nama    : Nabilah Roslita Utami  
NPM     : 2306223446  
Kelas   : PBP B  

## Tugas Individu 7

**1. Jelaskan apa yang dimaksud dengan *stateless widget dan stateful widget*, dan jelaskan perbedaan dari keduanya.**

*Stateless widget* adalah *widget* yang bersifat statis atau *widget* tersebut tidak berubah. Sedangkan, *Stateful widget* adalah widget yang dinamis atau *widget* tersebut dapat berubah apabila terdapat suatu *event* sehingga terdapat interaksi dengan user.

**2. Sebutkan *widget* apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.**

Scaffold (Struktur dasar halaman), Appbar (Untuk bar utama di paling atas), Padding (Jarak framing sekitar body halaman), Column (Menyusun elemen secara vertikal), Row (Menyusun elemen secara horizontal), SizedBox (jarak column), Gridview (Menyusun widget secara grid), Card (Untuk InfoCard yang terdiri dari NPM, name, class), Text (Memunculkan tulisan “Begins your Journey at Book Corner”), Material ItemCard (Untuk menampilkan icons yang terdiri dari lihat product, add product dan logout), InkWell (Untuk deteksi event), Snackbar (Message singkat di bawah), Container (Tata letak).

**3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**

Untuk memperbarui stateful widget setiap ada event. variabel yang terdampak adalah variable yang berada pada class state dan yang berhubungan dengan UI dari event yang terjadi.

**4. Jelaskan perbedaan antara `const` dengan `final`.**

`const` berada di dalam suatu *class* dan nilainya harus sudah berupa nilai yang siap dibaca. `final` nilainya tidak dapat berubah atau diubah.

**5. Jelaskan bagaimana cara kamu mengimplementasikan *checklist-checklist* di atas.**

Generate projek flutter baru bernama book_corner dengan memberikan command pada cmd `flutter create book_corner`.  Kemudian, definisikan warna-warna yang dibutuhkan pada `main.dart.`  Kemudian, buat `menu.dart` untuk membuat widget. Lalu, disana buat AppBar, Text, dan 3 tombol (Lihat Product, Add Product, Logout). Untuk warna style yang berbeda pada tiap item, tambahkan properti color pada class ItemHomePage. Selanjutnya, pilih warna dari library color yang sudah ada. Lalu, buat itemnya, misalnya seperti ItemHomepage("Logout", Icons.logout, Colors.deepPurple[400]!).

**Referensi:**  
Fajar, A. R. (2021). *Flutter – Stateless vs Stateful*. Retrieved November 4, 2024, from https://www.kawankoding.id/flutter-stateless-vs-stateful/




## Tugas Individu 8

**1. Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?**

Kegunaan const adalah untuk mendeklarasikan objek atau widget yang tidak dapat diubah/berubah setelah dibuat. Keuntungannya adalah objek tidak dapat dirubah dan akan menjadi konstan serta menghindari kejadian perubahan data yang tidak perlu. Const digunakan saat ingin membuat objek dan widget yang tidak dapat berubah, menghindari pembuatan objek yang sama secara berulang. Const biasanya dihindari ketika ingin objek atau widget yang bersifat dinamis.

**2. Jelaskan dan bandingkan penggunaan *Column* dan *Row* pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**

Column mengatur layout dasar di flutter secara vertikal.

```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    const Text('A corner full of worlds waiting for you!'),
    const Text('Through the words, we have journey waiting us'),
    Text('Book Corner!', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
  ],
)
```

Row mengatur layout dasar di flutter secara horizontal.

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Image.asset('images/book1.jpg'),
    Image.asset('images/book2.jpg'),
    Image.asset('images/book3.jpg'),
  ],
);
```

**3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman *form* yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**

Elemen input yang saya gunakan dalam halaman form adalah `TextFormField` untuk menginput Title, Price, Category, Description dan `ElevatedButton` (Save) untuk menampilkan pesan sukses saat ada event onpress(). Selain itu, di dalam flutter terdapat juga `CheckboxListTile` untuk memilih beberapa pilihan, `SwitchListTile` untuk memilih on/off atau true/false, `DropdownButton` untuk memilih salah satu opsi tertentu, `Slider` untuk memilih berdasarkan rentang tertentu, `Radio` untuk memilih satu opsi saja.

**4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**  

Pada `main.dart` dapat menentukan tema dalam MaterialApp dan menggunakan themeData untuk mendefine theme apk seperti `colorScheme` (primarySwatch, secondary). Lalu saat ingin menggunakannya kita dapat memanggilnya dengan `color:Theme.of(context).colorScheme.primary`

**5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**  

Dapat menggunakan widget `Navigator` yaitu menampilkan halaman seakan berbentuk stack. Lalu, melalui `BuildContext` terdapat fungsi `pushReplacement`, `push()` dan `pop().`

```dart
Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => MyHomePage(),
    ));
    
Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const ProductEntryformPge(),
    ));
    
onPressed: () {
  Navigator.pop(context);
  _formKey.currentState!.reset();
},
```

**Referensi:**  

Flutter. (n. d). *Column class*. Retrieved November 12, 2024, from https://api.flutter.dev/flutter/widgets/Column-class.html  

Flutter. (n. d). *Layouts in Flutter*. Retrieved November 12, 2024, from https://docs.flutter.dev/ui/layout



## Tugas Individu 9

**1. Jelaskan fungsi dari library *http* yang sudah kamu implementasikan pada tugas ini**

`http` membantu developer dalam mengembangkan aplikasi *mobile,* yaitu mengirim permintaan http seperti GET, POST, dll misalnya ke website, yakni mengintegrasikan antara Django dan Flutter.

**2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa *instance* CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**

CookieRequest digunakan untuk menyimpan informasi yang akan digunakan untuk membuat permintaan http. CookieRequest perlu digunakan untuk memastikan konsistensi pada permintaan http-nya (hak akses / authentication). Instance CookieRequest akan memudahkan dalam mengelola cookies untuk semua permintaan http dengan cookie yang sama. 

**3. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.**

Memberikan izin android untuk mengakses internet dengan menambahkan `<uses-permission android:name="android.permission.INTERNET" />` . Lalu tambahkan fungsi fetch untuk mengambil data dari suatu url dan tambahkan request.get. Misalnya seperti ini

```dart
final response = await request.get('http://127.0.0.1:8000//json/');
```

Kemudian, simpan response yang dihasilkan pada suatu variable. Dan buat widget untuk menampilkan datanya.

**4. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**

Login dan register:

- Input username dan password pada flutter lalu di POST ke Django.
- Pada Django akan dieksekusi melalui method Login atau register. Django akan melakukan *authentication.*
- Kemudian flutter akan menerima response dari Django untuk di validasi. Pada proses login. Flutter akan menyimpan Cookie dan membagikannya ke semua komponen aplikasi. Cookie tersebut akan memvalidasi hak akses pada halaman aplikasi yang di-show-kan.

Logout: 

- Flutter akan POST ke method logout di Django.
- Django akan memproses penghapusan sesi pengguna dan mengembalikannya pada Flutter.
- Kemudian, Flutter mengarahkan ke halaman login kembali.

**5. Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas secara *step-by-step*! (bukan hanya sekadar mengikuti tutorial).**

Integrasi A*uthentication* Django dan Flutter: Pada Django, buat app bernama *authentication* dengan cmd `python [manage.py](http://manage.py/) startapp *authentication.`* Lalu *install library* baru `django-cors-headers,` tambahkan juga pada requirements.txt. Kemudian, tambahkan `corsheaders.middleware.CorsMiddleware` di settings.py. Tambahkan method Login, Register, dan Logout pada views.py/authentication untuk memproses *authentication* nantinya.   

Selanjutnya, pada Flutter *install package* `flutter pub add provider` dan`flutter pub add pbp_django_auth.` Lalu, `CookieRequest` *library* di pass ke semua child widgets menggunakan provider. Lalu buat file baru pada screens, login.dart dan register.dart sebagai UI Login register.  

Membuat Model *Custom:*  Manfaatkan Quicktype untuk membuat model yang menyesuaikan dengan tipe data JSON.  

Fetch Data dari Django untuk dihubungkan dengan Flutter: Mengizinkan akses internet pada flutter dengan menambahkan `<uses-permission android:name="android.permission.INTERNET" />.` Kemudian, buat list_productentry.dart untuk halaman yang memunculkan semua  card produk. Buat Navigator.push untuk mengirimkan context berisi data produk yang ke halaman detailProduct. Lalu, Buat detailproduct.dart yang akan memunculkan detail produknya.
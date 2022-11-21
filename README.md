# Penjelasan Tugas Flutter Pemrograman Berbasis Platform

## TUGAS 7

### Jelaskan apa yang dimaksud dengan _stateless widget_ dan _stateful widget_ dan jelaskan perbedaan dari keduanya.

- _Stateless widget_ merupakan sebuah widget yang bersifat statis atau tidak dapat dirubah. Selama aplikasi berjalan, _stateless widget_ tidak akan berubah. Hal yang dimaksud tidak berubah adalah perubahan dalam variabel, _icon_, tombol atau pengambilan data tidak akan mengubah _state_ dari aplikasi. Sehingga widget ini cocok untuk digunakan pada tampilan aplikasi yang bersifat statis.

- _Stateful widget_ merupakan sebuah widget yang bersifat dinamis atau dapat berubah. Berbeda dengan stateless widget, _stateful widget_ mampu merubah tampilan aplikasi, variabel, warna, tombol, dll. Selama aplikasi berjalan, _stateful widget_ akan secara dinamis merubah hal-hal tertentu pada aplikasi sesuai dengan kebutuhan _developer_. Salah satu method yang hanya bisa digunakan pada _stateful widget_ adalah `setState()`.

- Perbedaan pada kedua widget ini terletak pada sifatnya, dimana _stateless widget_ bersifat statis yang memiliki arti bahwa widget ini tidak akan merubah tampilan UI setelah program dijalankan dan selama program dijalankan. Sedangkan, _stateful widget_ bersifat dinamis karena tampilan maupun hal lainnya dapat dijadikan sebuah hal untuk memicu terjadinya perubahan pada UI aplikasi. _Stateless widget_ lebih cocok digunakan pada tampilan aplikasi yang sifatnya statis atau yang tidak memerlukan terjadinya perubahan tampilan. Sedangan _stateful widget_ cocok digunakan untuk tampilan aplikasi yang bersifat dinamis atau tampilan aplikasi yang memerlukan adanya perubahan. Selain itu, penggunaan `setState()` hanya dapat diaplikasikan pada _stateful widget_

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Widget yang saya gunakan pada proyek `counter_7` kali ini adalah :
- `MaterialApp` : adalah sebuah _parent_ dimana yang diapitnya akan menerapkan style _material design_
- `Scaffold` : Widget ini memiliki peran untuk mengatur struktur _visual layout_ dengan mengimplementasikan material design
- `Text` : Widget ini berfungsi untuk menampilkan text pada aplikasi
- `TextStyle` : Widget ini berfungsi untuk memberikan _styling_ pada text misalnya warna
- `Row` : Widget ini berfungsi untuk mengatur tata letak widget
- `Column` : Widget ini berfungsi untuk mengatur tata letak widget
- `Center` : Widget ini berfungsi untuk meletakkan widget didalamnya ke bagian tengah
- `Expanded` : Widget ini berfungsi untuk memperluas anak dari Row, Column atau flex sehingga mengisi ruang yang tersedia
- `Container` : Widget ini berfungsi sebagai pembungkus widget lain
- `FloatingActionButton`: Widget ini berfungsi untuk membuat sebuah tombol
- `Visibility` : Widget ini berfungsi untuk mengatur kemunculan widget lain


### Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` merupakan sebuah fungsi untuk memberitahu widget bahwa ada objek yang berubah pada State sehingga aplikasi akan memuat ulang widget tersebut dengan nilai yang sudah diubah. Variabel yang dapat terdampak pada fungsi tersebut adalah variabel yang sifanya mutable dan terdeklarasi secara global di sebuah class

### Jelaskan perbedaan antara `const` dengan `final`.
`final` dan `const` merupakan keyword yang dapat digunakan untuk membuat variabel yang bersifat immutable. Perbedaan utama ada pada inialisasi nilai dari variabelnya, `const` mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara eksplisit sehingga pada saat kompilasi variabel `const` sudah memiliki nilai, sedangkan `final` tidak mengharuskan variabel memiliki nilai secara eksplisit pada saat kompilasi.

### Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas.

1. Membuat direktori baru pada file dan membuka `cmd` pada direktori tersebut

2. Menjalankan `flutter create counter_7` pada `cmd`

3. Membuka proyek tersebut pada IDE]

4. Membuat variabel `counter` pada class `_MyHomePageState` untuk penampilan angka pada aplikasi dengan inisiasi awal 0

5. Membuat variabel `result` pada class `_MyHomePageState` untuk menampilkan output genap atau ganjil dengan inisiasi awal yaitu genap

6. Membuat method `_decrementCounter()`, method ini akan mengurangi nilai pada `counter`. Ketika `counter` akan dikurangi dan menghasilkan -1 maka `counter` akan diset menjadi 0 (0 merupakan nilai maksimal decrement `counter`). Proses decrement variabel dilakukan dalam fungsi `setState()`

7. Membuat method `_checkResult()`, method ini akan mengecek nilai pada `counter` ganjil atau genap. Jika ganjil, maka variabel `result` akan terupdate menjadi ganjil dan sebaliknya untuk genap. Proses pengecekan `counter` dan pengupdatean `result` dilakukan dalam fungsi `setState()`

8. Membuat method `showText()`, method ini akan menampilkan text `result` dan menyesuaikan warna yang akan ditampilkan

9. Menambah widget `FloatingActionButton` untuk tombol increment dan decrement dengan menyesuaikan fungsi `_decrementCounter()` dan `_incrementCounter()` ketika diklik.

10. Menjalankan aplikasi dengan `flutter run` pada `cmd`

## TUGAS 8

### Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`

- `Navigator.push` merupakan sebuah navigator routing dimana dia akan menambahkan page pada top of stack saja.

- `Navigator.pushReplacement` merupakan sebuah navigator routing yang akan menghapus page paling atas, lalu menambahkan page yang akan di routing artinya dia mengganti page pada urutan top of stack menjadi page yang baru akan di route (page yang baru akan menjadi top of stack)

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- `MaterialApp` : adalah sebuah _parent_ dimana yang diapitnya akan menerapkan style _material design_
- `Scaffold` : Widget ini memiliki peran untuk mengatur struktur _visual layout_ dengan mengimplementasikan material design
- `Text` : Widget ini berfungsi untuk menampilkan text pada aplikasi
- `TextStyle` : Widget ini berfungsi untuk memberikan _styling_ pada text misalnya warna
- `Column` : Widget ini berfungsi untuk mengatur tata letak widget
- `Container` : Widget ini berfungsi sebagai pembungkus widget lain
- `ListView.builder` : Widget ini berfungsi untuk menampilkan _list of children_ yang _scrollable_.
- `DropdownButton`: Widget ini berfungsi sebagai sebuah dropdown 
- `TextFormField` : Widget ini berfungsi sebagai form dari text
- `SizedBox` : Widget ini berfungsi untuk membuat box, dimana box ini bisa digunakan untuk menambah jarak
- `Center` : Widget ini berfungsi untuk meletakkan widget didalamnya ke bagian tengah
- `ButtonStyle` : Widget ini berfungsi untuk memberikan _styling_ pada button misalnya warna
- `Card` : Widget ini berfungsi untuk menampilkan card
- `Drawer` : Widget ini berfungsi untuk memberikan semacam Navbar pada aplikasi

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: `onPressed`).

- `onPressed`
- `onChanged`
- `onSaved` 
- `onClick`
- `onTap`
- `onHover`

### Jelaskan bagaimana cara kerja `Navigator` dalam "mengganti" halaman dari aplikasi Flutter.

Pada dasarnya Navigator dalam aplikasi Flutter memiliki mekanisme pergantian halaman dengan menggunakan prinsip stack. Halaman yang akan dimuat akan di-push pada top of stack, sedangkan jika ingin berpindah ke halaman sebelumnya, Navigator akan melakukan pop pada stack, sehingga page yang saat ini dilihat akan dihapus dari stack dan tampilan pengguna akan berganti ke halaman sebelumnya.

### Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas.

1. Membuat class `drawer.dart` dimana class ini akan menjadi Navbar untuk seluruh page

2. Membuat class, dimana class ini akan menjadi sebuah page yang akan dirouting pada drawer

3. Membuat class Model, class ini memiliki atribut judul, nominal, dan jenis. Class ini juga memiliki list yang bersifat static untuk menampung data budget dari user

4. Class yang dibuat adalah `data_budget.dart` untuk menampilkan data dari list, lalu `tambah_budget.dart` untuk form budget dari user

5. Buat sesuai spesifikasi pada soal...

6. Selesai 🤩

## TUGAS 9

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Sebenarnya untuk pengambilan data JSON kita tidak perlu membuat model terlebih dahulu, kita dapat melakukan pengambilan data JSON tersebut dalam bentuk http response dalam bentuk raw data. Namun, untuk kemudahan pengaksesan data dari JSON tersebut, developer disarankan membuat model untuk menampung data JSON tersebut dan mempermudah developer untuk melakukan operasi pada data tersebut.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- `MaterialApp` : adalah sebuah _parent_ dimana yang diapitnya akan menerapkan style _material design_
- `Scaffold` : Widget ini memiliki peran untuk mengatur struktur _visual layout_ dengan mengimplementasikan material design
- `Text` : Widget ini berfungsi untuk menampilkan text pada aplikasi
- `TextStyle` : Widget ini berfungsi untuk memberikan _styling_ pada text misalnya warna
- `Column` : Widget ini berfungsi untuk mengatur tata letak widget
- `Row` : Widget ini berfungsi untuk mengatur tata letak widget
- `Container` : Widget ini berfungsi sebagai pembungkus widget lain
- `ListView.builder` : Widget ini berfungsi untuk menampilkan _list of children_ yang _scrollable_
- `SizedBox` : Widget ini berfungsi untuk membuat box, dimana box ini bisa digunakan untuk menambah jarak
- `Center` : Widget ini berfungsi untuk meletakkan widget didalamnya ke bagian tengah
- `Card` : Widget ini berfungsi untuk menampilkan card
- `FloatingActionButton`: Widget ini berfungsi untuk membuat sebuah tombol
- `Expanded` : Widget ini berfungsi untuk memperluas anak dari Row, Column atau flex sehingga mengisi ruang yang tersedia
- `Padding` : Widget ini berfungsi untuk mengatur padding dari widget lainnya
- `BorderSide` : Widget ini berfungsi untuk memberikan border
- `RoundedRectangleBorder` : Widget ini berfungsi untuk memberi bentuk rounded pada box
- `ListTile` : Widget ini berfungsi untuk memberi bentuk list di widget dalamnya.
- `CheckBoxListTile` : Widget ini berfungsi untuk menampilkan checkbox.
- `FutureBuilder` : Widget ini berfungsi untuk fetching data

### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

1. Membuat class model untuk mendefinisikan data dari JSON

2. Membuat method untuk melakukan fetch data dari website json tugas 3 dengan http, dimana method ini di refactor menjadi file baru

4. Response dari http akan diubah menjadi object Dart dan dimasukkan kedalam list

3. Untuk mendisplay data tersebut, data dapat memanfaatkan `FutureWidget`, dimana widget ini digunakan karena result dari server menggunakan Future yang memberikan delay dalam pengambilan data

6. Melakukan iterasi terhadap data yang ada, untuk menampilkan data

### Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas.

1. Membuat class `watchlist.dart` dimana class ini akan menjadi model dari untuk page watchlist dan menampung data json

2. Menambahkan page route drawer untuk di route ke view MyWatchlist 

3. Membuat method untuk melakukan fetch data dari website json tugas 3 dengan http, dimana method ini di refactor menjadi file baru

4. Membuat page view dari mywatchlist yaitu untuk menampilkan list movie dan page detail untuk menampilkan movie detail

5. Buat sesuai spesifikasi pada soal...

6. Selesai 🤩
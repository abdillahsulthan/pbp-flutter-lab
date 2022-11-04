# Penjelasan Tugas 7

## Jelaskan apa yang dimaksud dengan _stateless widget_ dan _stateful widget_ dan jelaskan perbedaan dari keduanya.
- _Stateless widget_ merupakan sebuah widget yang bersifat statis atau tidak dapat dirubah. Selama aplikasi berjalan, _stateless widget_ tidak akan berubah. Hal yang dimaksud tidak berubah adalah perubahan dalam variabel, _icon_, tombol atau pengambilan data tidak akan mengubah _state_ dari aplikasi. Sehingga widget ini cocok untuk digunakan pada tampilan aplikasi yang bersifat statis.

- _Stateful widget_ merupakan sebuah widget yang bersifat dinamis atau dapat berubah. Berbeda dengan stateless widget, _stateful widget_ mampu merubah tampilan aplikasi, variabel, warna, tombol, dll. Selama aplikasi berjalan, _stateful widget_ akan secara dinamis merubah hal-hal tertentu pada aplikasi sesuai dengan kebutuhan _developer_. Salah satu method yang hanya bisa digunakan pada _stateful widget_ adalah `setState()`.

- Perbedaan pada kedua widget ini terletak pada sifatnya, dimana _stateless widget_ bersifat statis yang memiliki arti bahwa widget ini tidak akan merubah tampilan UI setelah program dijalankan dan selama program dijalankan. Sedangkan, _stateful widget_ bersifat dinamis karena tampilan maupun hal lainnya dapat dijadikan sebuah hal untuk memicu terjadinya perubahan pada UI aplikasi. _Stateless widget_ lebih cocok digunakan pada tampilan aplikasi yang sifatnya statis atau yang tidak memerlukan terjadinya perubahan tampilan. Sedangan _stateful widget_ cocok digunakan untuk tampilan aplikasi yang bersifat dinamis atau tampilan aplikasi yang memerlukan adanya perubahan. Selain itu, penggunaan `setState()` hanya dapat diaplikasikan pada _stateful widget_

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

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


## Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` merupakan sebuah fungsi untuk memberitahu widget bahwa ada objek yang berubah pada State sehingga aplikasi akan memuat ulang widget tersebut dengan nilai yang sudah diubah. Variabel yang dapat terdampak pada fungsi tersebut adalah variabel yang sifanya mutable dan terdeklarasi secara global di sebuah class

## Jelaskan perbedaan antara `const` dengan `final`.
`final` dan `const` merupakan keyword yang dapat digunakan untuk membuat variabel yang bersifat immutable. Perbedaan utama ada pada inialisasi nilai dari variabelnya, `const` mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara eksplisit sehingga pada saat kompilasi variabel `const` sudah memiliki nilai, sedangkan `final` tidak mengharuskan variabel memiliki nilai secara eksplisit pada saat kompilasi.

## Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas.

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

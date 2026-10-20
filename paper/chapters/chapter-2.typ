#import "../template.typ": *

#pagebreak(weak: true)
#set figure(numbering: roman-prefixed(2))
#set math.equation(numbering: roman-prefixed(2))
#counter(figure.where(kind: image)).update(0)
#counter(figure.where(kind: table)).update(0)
#counter(figure.where(kind: raw)).update(0)
#counter(figure.where(kind: "algorithm")).update(0)
#counter(math.equation).update(0)
= Studi Literatur <chap:studi-literatur>

== Tentang Studi Literatur

Studi literatur memuat tinjauan pustaka, landasan teori, dan penelitian terdahulu yang relevan dengan topik tugas akhir. Penulis diharapkan menjelaskan:

+ landasan teori yang digunakan untuk menyelesaikan persoalan tugas akhir;
+ pengetahuan tentang kasus yang dikaji; dan
+ penelitian atau solusi terkait untuk menentukan posisi persoalan serta solusi yang mungkin diterapkan.

Studi literatur bukan sekadar rangkuman sumber, melainkan hasil pengolahan yang disajikan secara sistematis. Penulisan dapat dimulai dari kasus yang dikaji, dilanjutkan dengan teori yang relevan, dan diakhiri dengan tinjauan penelitian terdahulu.

== Format Gambar, Tabel, Rumus, dan Kode Program

Bagian ini menunjukkan padanan Typst untuk unsur-unsur yang lazim digunakan dalam laporan tugas akhir.

=== Penulisan Gambar

Contoh gambar ditunjukkan pada @fig:jaringan dan @fig:jaringan-panjang. Gunakan label setelah elemen untuk membuat rujukan silang yang selalu mengikuti nomor terbaru.

#figure(
  image("../assets/gambar1.png", width: 70%),
  kind: image,
  supplement: [Gambar],
  caption: [Contoh peletakan gambar di dalam dokumen],
) <fig:jaringan>

Gambar, grafik, atau ilustrasi harus memiliki judul yang menjelaskan isinya. Gambar dan judulnya diposisikan di tengah, sedangkan judul diletakkan di bawah gambar. Pastikan aset memiliki resolusi yang cukup agar tidak buram saat dicetak.

#figure(
  image("../assets/gambar1.png", width: 90%),
  kind: image,
  supplement: [Gambar],
  caption: [Contoh gambar dengan judul panjang yang dapat terbungkus menjadi beberapa baris],
) <fig:jaringan-panjang>

Untuk memperoleh gambar yang tajam:

+ Hindari tangkapan layar jika diagram dapat digambar ulang dengan alat berbasis vektor.
+ Ekspor diagram raster dengan skala yang memadai, misalnya 300\%.
+ Gunakan SVG atau PDF untuk diagram vektor jika sumbernya tersedia.

=== Penulisan Tabel

Judul tabel diletakkan di atas isi tabel. Contoh tabel pendek ditunjukkan pada @tab:harga dan @tab:sederhana.

#figure(
  kind: table,
  supplement: [Tabel],
  caption: [Contoh tabel dengan lebar kolom fleksibel],
  table(
    columns: (10%, 1fr, 24%, 24%),
    align: (center, left, left, right),
    table.header([*No.*], [*Nama*], [*Satuan*], [*Harga*]),
    [1], [Buku], [Eksemplar], [25.000],
    [2], [Komputer], [Unit], [2.500.000],
    [3], [Pensil], [Buah], [118.900],
  ),
) <tab:harga>

#text(size: 9pt)[Catatan: harga pada tabel hanya merupakan data contoh.]

#figure(
  kind: table,
  supplement: [Tabel],
  caption: [Tabel dengan format sederhana],
  table(
    columns: (1fr, 1fr, 1fr),
    table.header([*Nama*], [*Satuan*], [*Harga*]),
    [Buku], [Eksemplar], [25.000],
    [Komputer], [Unit], [2.500.000],
    [Pensil], [Buah], [118.900],
  ),
) <tab:sederhana>

Tabel dapat dipisahkan ke berkas komponen agar bab tetap mudah dibaca, seperti @tab:eksternal berikut.

#include "../components/sample-table.typ"

=== Penulisan Rumus atau Persamaan Matematika

Contoh persamaan bernomor ditunjukkan pada @eq:energi.

$ E = m c^2 $ <eq:energi>

Persamaan beberapa baris dapat ditulis dengan perataan pada tanda sama dengan:

$
   f(x) & = a x^2 + b x + c \
  f'(x) & = 2 a x + b
$ <eq:polinomial>

Contoh penjumlahan dan rata-rata fungsi adalah sebagai berikut:

$
            S & = sum_(i=1)^n i^2 \
              & = (n(n+1)(2n+1)) / 6 \
  overline(f) & = 1/(q-p) integral_p^q f(x) dif x
$ <eq:rata-rata>

=== Penulisan Kode Program dan Pseudokode

Kode singkat dapat ditampilkan langsung, sedangkan kode panjang sebaiknya disimpan dalam berkas terpisah dan dimasukkan ke lampiran. @lst:binary-search menunjukkan implementasi pencarian biner.

#source-code(
  read("../../impl/binary-search.py"),
  lang: "python",
  caption: [Implementasi pencarian biner secara iteratif],
) <lst:binary-search>

=== Penulisan Algoritma

@alg:binary-search memperlihatkan bentuk pseudokode yang ekuivalen dengan kode program sebelumnya.

#include "../algorithms/binary-search.typ"


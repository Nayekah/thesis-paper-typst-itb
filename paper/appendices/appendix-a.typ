#import "../template.typ": *

#pagebreak(weak: true)
#set figure(numbering: letter-prefixed(1))
#set math.equation(numbering: letter-prefixed(1))
#counter(figure.where(kind: image)).update(0)
#counter(figure.where(kind: table)).update(0)
#counter(figure.where(kind: raw)).update(0)
#counter(figure.where(kind: "algorithm")).update(0)
#counter(math.equation).update(0)
#heading(
  level: 1,
  supplement: [LAMPIRAN],
)[Kode Program] <app:kode-program>

== Perangkat Lunak Akuisisi Data

Lampiran ini merupakan tempat untuk kode program yang terlalu panjang jika dimasukkan ke bagian utama dokumen.

#source-code(
  read("../../impl/binary-search.py"),
  lang: "python",
  caption: [Contoh kode program dalam lampiran],
)

== Perangkat Lunak Pengolahan Data

Tambahkan kode, konfigurasi, atau tautan repositori yang diperlukan agar implementasi dapat direproduksi.


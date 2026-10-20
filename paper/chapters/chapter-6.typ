#import "../template.typ": *

#pagebreak(weak: true)
#set figure(numbering: roman-prefixed(6))
#set math.equation(numbering: roman-prefixed(6))
#counter(figure.where(kind: image)).update(0)
#counter(figure.where(kind: table)).update(0)
#counter(figure.where(kind: raw)).update(0)
#counter(figure.where(kind: "algorithm")).update(0)
#counter(math.equation).update(0)
= Evaluasi <chap:evaluasi>

Bab ini memaparkan cara solusi diuji, hasil pengujian, dan interpretasi hasil terhadap rumusan masalah serta kriteria keberhasilan.

== Metode Evaluasi

Jelaskan objek uji, skenario, variabel, metrik, jumlah pengulangan, instrumen, partisipan, prosedur, dan metode analisis. Bedakan evaluasi teknis dari pengujian penerimaan pengguna.

== Hasil Evaluasi

Sajikan data secara ringkas dengan tabel atau grafik. Laporkan hasil yang tidak sesuai harapan dan jangan hanya memilih hasil terbaik.

== Pembahasan Hasil Evaluasi

Hubungkan hasil dengan tujuan penelitian. Bahas keterbatasan pengukuran, ancaman terhadap validitas, dan kemungkinan penjelasan alternatif.

== Kesalahan Penulisan yang Sering Terjadi

=== Penggunaan “di mana”

Jangan memakai “di mana” sebagai pengganti kata _which_ dalam bahasa Inggris. Pilih penghubung yang sesuai dengan hubungan antarklausa, misalnya “yang”, “dengan”, atau “tempat”. Rujukan contoh penggunaan bahasa dapat dilihat pada @BPBI.

=== Penggunaan “sedangkan” dan “sehingga”

#figure(
  kind: table,
  supplement: [Tabel],
  caption: [Contoh penggunaan “sedangkan” dan “sehingga”],
  table(
    columns: (20%, 40%, 40%),
    table.header([*Kata*], [*Kurang tepat*], [*Tepat*]),
    [sedangkan],
    [Sedangkan sistem lama masih digunakan.],
    [Sistem lama masih digunakan, sedangkan sistem baru belum siap.],

    [sehingga],
    [Sehingga sistem lama masih digunakan.],
    [Sistem lama masih digunakan sehingga sistem baru belum siap.],
  ),
) <tab:konjungsi>

“Sedangkan” menghubungkan dua klausa yang berlawanan, sedangkan “sehingga” menyatakan akibat. Dalam ragam formal, keduanya lazim digunakan sebagai konjungsi intrakalimat. Koma digunakan sebelum “sedangkan”, tetapi tidak digunakan sebelum “sehingga” ketika klausa akibat melekat langsung pada klausa utama.

=== Penggunaan Istilah Baku

Gunakan bentuk baku dalam penulisan ilmiah, misalnya “analisis”, “proses bisnis”, “pengguna”, “sistem”, “basis data”, “aktivitas”, “efektivitas”, dan “media sosial”. Istilah teknis asing dapat ditulis miring jika belum diserap.

=== Pemisah Desimal dan Ribuan

Dalam teks bahasa Indonesia, gunakan koma sebagai pemisah desimal, misalnya 50,6\%, serta titik sebagai pemisah ribuan jika diperlukan.

=== Daftar

Gunakan daftar hanya jika membantu pembaca memahami urutan atau kelompok informasi. Jika penjelasan sebuah butir sangat panjang, pertimbangkan untuk menjadikannya subbab agar judul dan pembahasannya tidak terpisah halaman.

=== “Masing-masing” dan “Setiap”

“Masing-masing” ditempatkan setelah kata yang diterangkan, sedangkan “setiap” ditempatkan sebelum kata yang diterangkan. Contoh: “Setiap proses menggunakan algoritma masing-masing.”


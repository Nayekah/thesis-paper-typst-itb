#import "../template.typ": *

#pagebreak(weak: true)
#set figure(numbering: roman-prefixed(4))
#set math.equation(numbering: roman-prefixed(4))
#counter(figure.where(kind: image)).update(0)
#counter(figure.where(kind: table)).update(0)
#counter(figure.where(kind: raw)).update(0)
#counter(figure.where(kind: "algorithm")).update(0)
#counter(math.equation).update(0)
= Perancangan <chap:perancangan>

Ilustrasikan desain konseptual solusi dan jelaskan perbedaannya dengan sistem saat ini. Artefak perancangan harus dapat ditelusuri ke kebutuhan pada Bab @chap:analisis-masalah. Untuk dokumen proposal, bab ini dapat berfokus pada rancangan tingkat tinggi dan perbandingan kondisi sebelum serta sesudah solusi diterapkan.

== Arsitektur Solusi

Jelaskan batas sistem, komponen utama, aliran data, antarmuka eksternal, dan keputusan arsitektural. Untuk sistem _smart scale_, uraikan pembagian tugas antara ESP32, Raspberry Pi, sensor, kamera, penyimpanan lokal, dan layanan sinkronisasi.

== Perancangan Data

Jelaskan entitas, atribut, relasi, aturan validasi, retensi, dan mekanisme sinkronisasi data. Sertakan perlindungan data pribadi jika sistem mengolah data pengguna.

== Perancangan Antarmuka

Sajikan alur tugas utama, kondisi kosong, kondisi galat, umpan balik proses, serta pertimbangan aksesibilitas. Hubungkan setiap layar dengan kebutuhan pengguna yang dilayaninya.

== Rencana Verifikasi

Petakan komponen rancangan kepada metode pengujian yang akan digunakan. Rencana ini menjadi dasar implementasi pada Bab @chap:implementasi dan evaluasi pada Bab @chap:evaluasi.


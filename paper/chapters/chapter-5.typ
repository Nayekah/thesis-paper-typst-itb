#import "../template.typ": *

#pagebreak(weak: true)
#set figure(numbering: roman-prefixed(5))
#set math.equation(numbering: roman-prefixed(5))
#counter(figure.where(kind: image)).update(0)
#counter(figure.where(kind: table)).update(0)
#counter(figure.where(kind: raw)).update(0)
#counter(figure.where(kind: "algorithm")).update(0)
#counter(math.equation).update(0)
= Implementasi <chap:implementasi>

Bab ini menjelaskan realisasi rancangan menjadi perangkat keras dan perangkat lunak yang dapat diuji. Ganti teks panduan dengan hasil implementasi aktual.

== Lingkungan Implementasi

Dokumentasikan versi perangkat, sistem operasi, bahasa pemrograman, pustaka, konfigurasi jaringan, dan alat pengembangan. Cantumkan konfigurasi yang memengaruhi reproduktibilitas hasil.

== Implementasi Perangkat Keras

Jelaskan perakitan sensor, catu daya, mikrokontroler, komputer tepi, kamera, dan wadah perangkat. Sertakan alasan perubahan apabila implementasi berbeda dari rancangan.

== Implementasi Perangkat Lunak

Jelaskan modul akuisisi data, kalibrasi, analisis citra, penyimpanan, sinkronisasi, dan antarmuka pengguna. Potongan kode hanya ditampilkan jika membantu menjelaskan keputusan teknis; kode lengkap dapat ditempatkan dalam lampiran.

== Integrasi Sistem

Jelaskan protokol komunikasi, format pesan, penanganan galat, pencatatan peristiwa, dan cara komponen dipulihkan setelah koneksi atau daya terputus.


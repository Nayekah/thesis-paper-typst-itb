#import "../template.typ": *

#set figure(numbering: roman-prefixed(1))
#set math.equation(numbering: roman-prefixed(1))
#counter(figure.where(kind: image)).update(0)
#counter(figure.where(kind: table)).update(0)
#counter(figure.where(kind: raw)).update(0)
#counter(figure.where(kind: "algorithm")).update(0)
#counter(math.equation).update(0)
= Pendahuluan <chap:pendahuluan>

== Latar Belakang

Subbab ini menjelaskan dasar pemikiran, motivasi, kebutuhan, alasan, atau urgensi pemilihan masalah tugas akhir. Subbab ini berisi penjelasan ringkas tentang kondisi atau situasi saat ini yang berkaitan dengan topik yang dibahas. Tujuan utamanya adalah memberikan informasi secukupnya agar pembaca memahami topik. Jelaskan hal-hal berikut:

+ Kondisi atau situasi topik beserta permasalahannya, misalnya pengelolaan informasi di fasilitas kesehatan daerah perdesaan dan masalah yang dihadapi berdasarkan hasil survei atau wawancara dengan pihak terkait.
+ Urgensi penyelesaian masalah, misalnya dampak negatif jika masalah tersebut tidak diselesaikan.
+ Berbagai solusi yang telah atau mungkin diterapkan berdasarkan studi literatur, wawancara, atau kunjungan lapangan.
+ Kelemahan solusi tersebut yang menjadi dasar perumusan masalah tugas akhir.

Latar belakang dapat ditulis dalam dua sampai tiga halaman. Latar belakang yang baik mengantarkan pembaca kepada pemahaman yang jelas tentang topik sehingga pembaca dapat mengikuti pembahasan berikutnya. Penulis diharapkan melakukan investigasi mendalam untuk mengumpulkan fakta yang relevan melalui studi literatur, wawancara, atau kunjungan lapangan. Hasil studi dijelaskan secara ringkas dalam subbab ini, sedangkan hasil studi literatur yang komprehensif dijabarkan secara sistematis dalam Bab @chap:studi-literatur.

Hindari pembukaan yang terlalu umum atau terlalu luas sehingga sulit dihubungkan dengan topik tugas akhir, misalnya:

+ “Pentingnya teknologi informasi dalam kehidupan manusia.”
+ “Perkembangan pesat teknologi _artificial intelligence_ di era digital.”
+ “Tantangan pengelolaan data besar (_big data_) di berbagai sektor industri.”
+ “Peran teknologi informasi dalam meningkatkan kualitas layanan kesehatan.”

Penulisan yang terlalu umum menyulitkan perumusan masalah, tujuan, metodologi, dan evaluasi tugas akhir.

Cantumkan referensi dengan benar. Sebagai contoh, kalimat ini merujuk pada dua sumber @laudon2020 @pressman2019. Format naratif dapat ditulis sebagai berikut:

#quote(
  block: true,
)[Menurut #cite(<laudon2020>, form: "prose"), sistem informasi merupakan kombinasi teknologi informasi dan aktivitas manusia yang menggunakan teknologi tersebut untuk mendukung operasi dan manajemen organisasi.]

Format parentetik dapat ditulis sebagai berikut:

#quote(
  block: true,
)[Sistem informasi merupakan kombinasi teknologi informasi dan aktivitas manusia yang menggunakan teknologi tersebut untuk mendukung operasi dan manajemen organisasi @laudon2020.]

== Rumusan Masalah

Rumusan masalah berisi masalah utama yang dibahas dalam tugas akhir. Rumusan yang baik mencakup:

+ Pokok persoalan dari kondisi saat ini, yaitu kelemahan kondisi, situasi, atau solusi yang telah dijelaskan dalam latar belakang.
+ Elaborasi urgensi penyelesaian masalah dan akibat jika masalah tersebut tidak diselesaikan.
+ Usulan singkat solusi yang ditawarkan. Persoalan yang dideskripsikan pada subbab ini harus dipertanggungjawabkan dalam bab evaluasi.

Hindari rumusan masalah yang terlalu umum, misalnya “Bagaimana cara meningkatkan kualitas layanan kesehatan di Indonesia?” atau “Bagaimana cara mengurangi kemacetan lalu lintas di kota besar?”. Rumusan yang spesifik memudahkan penentuan tujuan, metodologi, dan evaluasi.

Hindari pula pertanyaan yang merupakan keniscayaan dalam pelaksanaan tugas akhir, seperti cara melakukan analisis kebutuhan, merancang basis data, mengimplementasikan model, atau menguji sistem. Analisis, perancangan, implementasi, dan pengujian merupakan tahapan yang memang harus dilakukan.

== Tujuan

Tuliskan tujuan utama dan tujuan terperinci yang hendak dicapai. Fokuskan subbab ini pada hasil akhir yang diperoleh setelah tugas akhir selesai dan kaitkan dengan rumusan masalah. Tuliskan pula kriteria keberhasilan yang terukur.

== Batasan Masalah

Tuliskan batasan yang diambil dalam pelaksanaan tugas akhir. Subbab ini dapat ditiadakan jika topik dan judul sudah cukup spesifik.

== Metodologi

Tuliskan seluruh tahapan yang akan dilalui untuk menyelesaikan persoalan tugas akhir. Contoh tahapan meliputi:

+ Investigasi dan pengumpulan fakta untuk merumuskan masalah.
+ Pencarian, pengelompokan, dan penapisan literatur atau sumber informasi yang relevan. Dokumentasikan proses penggalian informasi, termasuk rekaman wawancara atau survei, dalam lampiran.
+ Analisis kebutuhan pengguna dan sistem dengan metode yang sesuai, seperti wawancara, survei, observasi, atau studi kasus.
+ Perancangan solusi berdasarkan hasil analisis kebutuhan dengan artefak yang relevan, seperti UML, ERD, atau purwarupa.
+ Implementasi solusi berdasarkan hasil perancangan dengan teknologi, bahasa pemrograman, dan alat yang telah dipilih.
+ Evaluasi solusi menggunakan metode pengujian, metrik evaluasi, atau studi kasus yang dapat menilai kriteria keberhasilan.
+ Penarikan kesimpulan dan penyusunan saran berdasarkan hasil tugas akhir.

== Sistematika Penulisan

Gambaran umum struktur laporan ini adalah sebagai berikut:

+ Bab I Pendahuluan berisi latar belakang, rumusan masalah, tujuan, batasan masalah, metodologi, dan sistematika penulisan.
+ Bab II Studi Literatur berisi kajian pustaka, teori, konsep, dan penelitian terdahulu yang relevan.
+ Bab III Analisis Masalah berisi analisis masalah, kebutuhan pengguna, dan alternatif solusi.
+ Bab IV Perancangan berisi perancangan solusi yang diusulkan.
+ Bab V Implementasi berisi proses implementasi solusi.
+ Bab VI Evaluasi berisi metode, hasil, dan pembahasan pengujian.
+ Bab VII Penutup berisi kesimpulan dan saran.
+ Daftar pustaka memuat seluruh referensi yang disitasi.
+ Lampiran memuat dokumen pendukung, seperti kode program, data hasil pengujian, dan transkrip wawancara.


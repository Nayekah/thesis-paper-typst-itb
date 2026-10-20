#import "../template.typ": *

#pagebreak(weak: true)
#set figure(numbering: roman-prefixed(3))
#set math.equation(numbering: roman-prefixed(3))
#counter(figure.where(kind: image)).update(0)
#counter(figure.where(kind: table)).update(0)
#counter(figure.where(kind: raw)).update(0)
#counter(figure.where(kind: "algorithm")).update(0)
#counter(math.equation).update(0)
= Analisis Masalah <chap:analisis-masalah>

Bab ini membahas masalah pada sistem saat ini, kebutuhan yang diperlukan untuk menyelesaikannya, dan pemilihan solusi yang diusulkan. Secara garis besar, bab ini memuat:

+ deskripsi hasil analisis persoalan tugas akhir;
+ solusi yang ditawarkan—berupa algoritma, konsep desain, formula, atau gabungannya—dengan detail yang cukup untuk direalisasikan; dan
+ pendekatan yang dipilih untuk menyelesaikan persoalan.

Pembagian subbab dapat disesuaikan dengan topik tugas akhir.

== Analisis Kondisi Saat Ini

Gambarkan model konseptual sistem saat ini beserta komponen dan interaksi antarkomponennya. Setelah itu, jelaskan masalah yang ditemukan. Analisis sistem informasi dapat menggunakan sudut pandang organisasi, manusia, dan teknologi #cite(<laudon2020>, form: "prose"). Proses analisis dan rekayasa kebutuhan perlu terdokumentasi agar solusi dapat ditelusuri kembali kepada masalah yang hendak diselesaikan @pressman2019.

== Analisis Kebutuhan

Jelaskan kebutuhan berdasarkan bukti hasil investigasi, studi literatur, wawancara, observasi, atau survei. Pisahkan kebutuhan pengguna dari keputusan desain agar alasan pemilihan solusi tetap jelas.

=== Identifikasi Masalah Pengguna

Tuliskan pengguna atau pemangku kepentingan, tujuan mereka, kendala yang dialami, dan konteks penggunaan sistem.

=== Kebutuhan Fungsional

Nyatakan fungsi yang harus disediakan sistem. Setiap kebutuhan sebaiknya memiliki identitas, sumber, prioritas, dan kriteria penerimaan.

=== Kebutuhan Nonfungsional

Nyatakan atribut mutu yang dapat diuji, misalnya batas latensi, ketersediaan, keamanan, kemudahan penggunaan, konsumsi daya, dan kemampuan sistem untuk pulih.

== Analisis Pemilihan Solusi

=== Alternatif Solusi

Jelaskan alternatif yang layak dan dasar pembandingnya. Hindari membuat alternatif semu yang sejak awal tidak dapat memenuhi kebutuhan utama.

=== Analisis Penentuan Solusi

Gunakan kriteria yang konsisten, bobot yang dapat dipertanggungjawabkan, serta bukti yang memadai. Nyatakan asumsi dan risiko dari solusi terpilih.


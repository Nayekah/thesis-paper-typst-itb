#import "../template.typ": *
#import "../metadata.typ": metadata

#abstract-page(
  metadata,
  body: [
    Proses manual dalam rantai pasok jeruk di tingkat lapak, yang mencakup sortir, timbang, dan catat, terbukti tidak efisien, memakan waktu, dan rentan terhadap kesalahan. Meskipun solusi berbasis _Internet of Things_ (IoT) dapat mengatasi masalah ini, arsitektur terpusat konvensional berbasis _cloud_ justru menimbulkan masalah baru berupa latensi tinggi yang menghambat alur kerja waktu nyata. Penelitian ini bertujuan untuk merancang dan mengimplementasikan purwarupa sistem _smart scale_ berbasis IoT dengan pendekatan desentralisasi (_edge computing_) untuk meminimalkan latensi dan meningkatkan efisiensi operasional.
    Metode yang digunakan adalah model purwarupa, yang diwujudkan dalam bentuk perangkat keras dengan arsitektur prosesor ganda (Raspberry Pi 5 dan ESP32) yang mampu mengintegrasikan fungsi timbang dan analisis kualitas citra secara simultan. Hasil evaluasi menunjukkan bahwa purwarupa dengan arsitektur _edge computing_ yang diimplementasikan mampu memberikan respons 43,5\% lebih cepat (latensi rata-rata 18,05 detik) dibandingkan dengan simulasi arsitektur terpusat. Selain itu, sistem ini berhasil meningkatkan efisiensi waktu kerja secara keseluruhan sebesar 58,32\% jika dibandingkan dengan metode manual konvensional.
    Pengujian penerimaan pengguna (_user acceptance testing_—UAT) yang melibatkan 30 partisipan juga menunjukkan penerimaan yang sangat positif, dengan skor rata-rata untuk kemudahan penggunaan (5,0/5,0), kejelasan antarmuka (4,87/5,0), dan persepsi kinerja (4,95/5,0). Dengan demikian, implementasi sistem _smart scale_ dengan arsitektur desentralisasi terbukti merupakan solusi yang valid dan efektif untuk menjawab permasalahan latensi dan inefisiensi di lapak. Sistem ini tidak hanya unggul secara teknis dalam hal kinerja, tetapi juga fungsional dan dapat diterima dengan baik oleh pengguna akhir serta berpotensi besar untuk modernisasi rantai pasok agribisnis.
  ],
  keywords: metadata.keywords,
)


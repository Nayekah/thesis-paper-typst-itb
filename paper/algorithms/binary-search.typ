#import "../template.typ": algorithm

#algorithm(
  [Pencarian biner],
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 0.8em,
      [1.],
      [Tetapkan batas bawah ke indeks pertama dan batas atas ke indeks terakhir.],

      [2.],
      [Selama batas bawah tidak melebihi batas atas, hitung indeks tengah.],

      [3.], [Jika elemen tengah sama dengan target, kembalikan indeks tengah.],
      [4.],
      [Jika elemen tengah lebih kecil, geser batas bawah; jika tidak, geser batas atas.],

      [5.], [Kembalikan $-1$ jika target tidak ditemukan.],
    )
  ],
) <alg:binary-search>


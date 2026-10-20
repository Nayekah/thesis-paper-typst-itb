// Mesin templat Tugas Akhir ITB. Berkas ini merupakan bagian dari paper/.

#let month-name(month) = (
  "Januari",
  "Februari",
  "Maret",
  "April",
  "Mei",
  "Juni",
  "Juli",
  "Agustus",
  "September",
  "Oktober",
  "November",
  "Desember",
).at(month - 1)

#let date-id(value, full: true) = {
  if full {
    [#value.day() #month-name(value.month()) #value.year()]
  } else {
    [#month-name(value.month()) #value.year()]
  }
}

#let thesis(metadata: (:), body) = {
  set document(
    title: metadata.title,
    author: metadata.author,
    date: metadata.date,
    keywords: metadata.keywords,
  )
  set page(
    paper: "a4",
    binding: left,
    margin: (inside: 4cm, outside: 3cm, top: 3cm, bottom: 3cm),
    number-align: center + bottom,
    footer-descent: 26%,
  )
  set text(
    font: "Times New Roman",
    size: 12pt,
    lang: "id",
  )
  set par(
    justify: true,
    leading: 0.83em,
    spacing: 14.5pt,
    first-line-indent: 0pt,
  )
  set heading(numbering: "I.1.1.1", hanging-indent: 0pt)
  set outline(indent: level => (0em, 1.8em, 4.2em, 7em).at(level))
  set figure(gap: 0.7em)
  set figure.caption(separator: [ ])
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: raw): set figure.caption(position: top)
  show figure.where(kind: "algorithm"): set figure.caption(position: top)
  set table(
    inset: 6pt,
    align: left + horizon,
    stroke: 0.5pt + black,
  )
  show link: set text(fill: black)
  show heading.where(level: 1): it => {
    set align(center)
    set text(size: 14.35pt, weight: "bold")
    block(above: 0pt, below: 0pt, breakable: false)[
      #if it.numbering == none {
        v(36.7pt)
        upper(it.body)
        v(26.9pt)
      } else if it.supplement == [LAMPIRAN] {
        v(81.2pt)
        [LAMPIRAN #context numbering("A", counter(heading).get().first())]
        v(14.9pt)
        upper(it.body)
        v(42.8pt)
      } else {
        v(81.2pt)
        [BAB #context numbering("I", counter(heading).get().first())]
        v(14.9pt)
        upper(it.body)
        v(42.8pt)
      }
    ]
  }
  show heading.where(level: 2): set block(above: 18pt, below: 10pt)
  show heading.where(level: 2): set text(size: 12pt, weight: "bold")
  show heading.where(level: 3): set block(above: 14pt, below: 8pt)
  show heading.where(level: 3): set text(size: 12pt, weight: "bold")
  show heading.where(level: 4): set block(above: 12pt, below: 6pt)
  show heading.where(level: 4): set text(size: 12pt, weight: "bold")
  body
}

#let outline-marker(title) = box(width: 0pt, height: 0pt)[
  #show heading.where(level: 1): none
  #heading(level: 1, numbering: none, outlined: true, title)
]

#let front-title(title, outlined: true) = {
  pagebreak(weak: true)
  heading(level: 1, numbering: none, outlined: outlined, title)
}

#let roman-prefixed(number) = value => numbering("I", number) + "." + str(value)
#let letter-prefixed(number) = value => (
  numbering("A", number) + "." + str(value)
)

#let cover(metadata) = {
  set page(numbering: none, margin: 3.175cm)
  set align(center)
  block(width: 100%, height: 100%, breakable: false)[
    #place(
      top + center,
      block(width: 100%)[
        #set par(justify: false, leading: 0.5em, spacing: 0pt)
        #text(
          size: 14pt,
          weight: "bold",
          upper(metadata.at("cover-title", default: metadata.title)),
        )
      ],
    )

    #place(
      top + center,
      dy: 5.1cm,
      block(width: 100%)[
        #set par(justify: false, leading: 0.75em, spacing: 0pt)
        #text(size: 12pt, weight: "bold", metadata.cover-requirement)
        #linebreak()
        #text(size: 12pt, weight: "bold", metadata.cover-course)
      ],
    )

    #place(
      top + center,
      dy: 9.2cm,
      block(width: 100%)[
        #set par(justify: false, leading: 0.75em, spacing: 0pt)
        #text(size: 12pt, weight: "bold", [Oleh])
        #linebreak()
        #text(size: 14pt, weight: "bold", metadata.author)
        #linebreak()
        #text(size: 14pt, weight: "bold", [NIM: #metadata.student-id])
      ],
    )

    #place(
      top + center,
      dy: 13.35cm,
      image(metadata.logo, height: 3.5cm),
    )

    #place(
      top + center,
      dy: 18.2cm,
      block(width: 100%)[
        #set par(justify: false, leading: 0.55em, spacing: 0pt)
        #text(size: 12pt, weight: "bold", upper(metadata.cover-program))
        #linebreak()
        #text(size: 12pt, weight: "bold", upper(metadata.school))
        #linebreak()
        #text(size: 12pt, weight: "bold", upper(metadata.institute))
        #linebreak()
        #text(size: 12pt, weight: "bold", date-id(metadata.date, full: false))
      ],
    )
  ]
  pagebreak()
}

#let approval(metadata) = {
  pagebreak(weak: true)
  assert(
    metadata.supervisors.len() in (1, 2),
    message: "Jumlah pembimbing harus satu atau dua.",
  )
  set page(margin: 3.175cm)
  set align(center)
  place(outline-marker("LEMBAR PENGESAHAN"))
  block(width: 100%, height: 100%, breakable: false)[
    #place(
      top + center,
      dy: 0.4cm,
      block(width: 100%)[
        #set par(justify: false, leading: 0.5em, spacing: 0pt)
        #text(
          size: 14pt,
          weight: "bold",
          upper(metadata.at("approval-title", default: metadata.title)),
        )
      ],
    )

    #place(
      top + center,
      dy: 6.9cm,
      block(width: 100%)[
        #set par(justify: false, leading: 0.62em, spacing: 0pt)
        #text(size: 12pt, weight: "bold", [Oleh])
        #linebreak()
        #text(size: 14pt, weight: "bold", metadata.author)
        #linebreak()
        #text(size: 14pt, weight: "bold", [NIM: #metadata.student-id])
        #linebreak()
        #text(size: 12pt, weight: "bold", metadata.program)
        #linebreak()
        #text(size: 12pt, metadata.school)
        #linebreak()
        #text(size: 12pt, metadata.institute)
      ],
    )

    #place(
      top + center,
      dy: 15.2cm,
      block(width: 100%)[
        #set par(justify: false, leading: 0.62em, spacing: 0pt)
        #text(size: 12pt, [#metadata.city, #date-id(metadata.date)])
        #linebreak()
        #text(size: 12pt, [Mengetahui,])
      ],
    )

    #if metadata.supervisors.len() == 1 {
      place(top + center, dy: 17.1cm, text(size: 12pt, [Pembimbing,]))
      place(
        top + center,
        dy: 21.2cm,
        block(width: 100%)[
          #set par(justify: false, leading: 0.62em, spacing: 0pt)
          #text(size: 12pt, underline(metadata.supervisors.first().name))
          #linebreak()
          #text(size: 12pt, [NIP. #metadata.supervisors.first().id])
        ],
      )
    } else {
      place(
        top + center,
        dy: 17.1cm,
        grid(
          columns: (1fr, 1fr),
          gutter: 2cm,
          align: center,
          text(size: 12pt, [Pembimbing I,]), text(size: 12pt, [Pembimbing II,]),
        ),
      )
      place(
        top + center,
        dy: 21.2cm,
        grid(
          columns: (1fr, 1fr),
          gutter: 2cm,
          align: center,
          ..metadata.supervisors.map(supervisor => block[
            #set par(justify: false, leading: 0.62em, spacing: 0pt)
            #text(size: 12pt, underline(supervisor.name))
            #linebreak()
            #text(size: 12pt, [NIP. #supervisor.id])
          ]),
        ),
      )
    }
  ]
}

#let statement(metadata) = {
  front-title("LEMBAR PERNYATAAN")
  v(2cm)
  [Saya yang bertanda tangan di bawah ini menyatakan dengan sesungguhnya bahwa:]
  enum(
    [Tugas Akhir ini adalah hasil karya saya sendiri yang dibuat dengan sebenar-benarnya sesuai dengan kaidah ilmiah dan etika akademik.],
    [Semua sumber rujukan dan data yang saya gunakan dalam penyusunan laporan tugas akhir ini, baik berupa kutipan langsung maupun tidak langsung, telah saya cantumkan sumbernya dengan baik dan benar sesuai dengan ketentuan penulisan laporan tugas akhir.],
    [Isi laporan ini belum pernah diajukan pada program pendidikan di institusi mana pun.],
  )
  [Apabila di kemudian hari terbukti bahwa laporan ini melanggar hal-hal di atas, saya bersedia menerima sanksi sesuai dengan peraturan yang berlaku di #metadata.institute.]
  v(2cm)
  [#metadata.city, #date-id(metadata.date)]
  v(2cm)
  underline(metadata.author)
  linebreak()
  [NIM: #metadata.student-id]
}

#let abstract-page(
  metadata,
  title: "ABSTRAK",
  document-title: none,
  language: "id",
  author-label: "oleh",
  keyword-label: "Kata kunci",
  body: none,
  keywords: none,
) = {
  front-title(title)
  set text(lang: language)
  align(center)[
    #set par(justify: false)
    #strong(if document-title == none { metadata.title } else {
      document-title
    })
    #v(0.24cm)
    #author-label
    #v(0.25cm)
    #metadata.author
    #linebreak()
    #metadata.student-id
  ]
  v(0.14cm)
  set par(leading: 0.54em, spacing: 6pt)
  body
  if keywords != none {
    v(0.4cm)
    [#keyword-label: #keywords.join(", ").]
  }
}

#let manual-front-title(title, outline-title: none, top: 3pt, below: 17pt) = {
  pagebreak(weak: true)
  place(outline-marker(if outline-title == none { title } else {
    outline-title
  }))
  v(top)
  align(center, text(size: 14pt, weight: "bold", upper(title)))
  v(below)
}

#let front-outline(
  title,
  target: heading,
  depth: none,
  style: "contents",
  outline-title: none,
) = {
  let dimensions = if style == "float" {
    (top: 70pt, below: 44pt)
  } else if style == "compact-float" {
    (top: 76.5pt, below: 24pt)
  } else {
    (top: 3pt, below: 15pt)
  }
  manual-front-title(
    title,
    outline-title: outline-title,
    top: dimensions.top,
    below: dimensions.below,
  )
  set par(leading: 0.54em, spacing: 0pt)
  if style != "contents" {
    show outline.entry: it => link(
      it.element.location(),
      it.indented(
        context counter(target).display(
          it.element.numbering,
          at: it.element.location(),
        ),
        it.inner(),
      ),
    )
    outline(title: none, target: target, depth: depth)
  } else {
    show outline.entry.where(level: 1): it => {
      if it.element.func() == heading and it.element.numbering != none {
        v(10pt)
        strong(it)
      } else {
        it
      }
    }
    outline(title: none, target: target, depth: depth)
  }
}

#let glossary-page(title, columns, rows) = {
  manual-front-title(title, top: 3pt, below: 17pt)
  table(
    columns: columns,
    inset: (x: 6pt, y: 5pt),
    stroke: (x, y) => if y == 0 { (bottom: 0.8pt) } else { none },
    table.header(..rows.first()),
    ..rows.slice(1).flatten(),
  )
}

#let note-box(body) = block(
  width: 100%,
  inset: 10pt,
  fill: luma(245),
  stroke: 0.6pt + luma(150),
  radius: 3pt,
  body,
)

#let source-code(code, lang: none, caption: none) = {
  let normalized = code.replace("\r\n", "\n").replace("\r", "\n")
  let lines = normalized.split("\n")
  while lines.len() > 0 and lines.last() == "" {
    lines = lines.slice(0, -1)
  }
  let source = lines.join("\n")
  let line-numbers = lines
    .enumerate()
    .map(((index, _)) => str(index + 1))
    .join("\n")
  figure(
    kind: raw,
    supplement: [Listing],
    caption: caption,
    block(
      width: 100%,
      inset: 9pt,
      fill: rgb("f2f2eb"),
      stroke: 0.5pt + black,
      {
        show raw.where(block: true): set block(
          inset: 0pt,
          fill: none,
          stroke: none,
          radius: 0pt,
        )
        set text(size: 9pt)
        grid(
          columns: (auto, 1fr),
          column-gutter: 9pt,
          align: (right + top, left + top),
          text(fill: gray, raw(line-numbers, block: true)),
          raw(source, lang: lang, block: true),
        )
      },
    ),
  )
}

#let algorithm(caption, body) = figure(
  kind: "algorithm",
  supplement: [Algoritma],
  caption: caption,
  block(width: 100%, inset: 8pt, stroke: (top: 0.8pt, bottom: 0.8pt), body),
)


#import "template.typ": *
#import "metadata.typ": metadata

#show: thesis.with(metadata: metadata)

#cover(metadata)

#set page(numbering: "i")
#counter(page).update(1)

#approval(metadata)
#statement(metadata)
#include "frontmatter/abstract-id.typ"
#include "frontmatter/abstract-en.typ"
#include "frontmatter/foreword.typ"

#front-outline("DAFTAR ISI", depth: 4)
#front-outline(
  "DAFTAR GAMBAR",
  target: figure.where(kind: image),
  style: "float",
)
#front-outline(
  "DAFTAR TABEL",
  target: figure.where(kind: table),
  style: "float",
)
#front-outline(
  "DAFTAR ALGORITMA",
  target: figure.where(kind: "algorithm"),
  style: "compact-float",
)
#front-outline(
  [DAFTAR #emph[LISTING]],
  target: figure.where(kind: raw),
  style: "compact-float",
  outline-title: "DAFTAR KODE PROGRAM",
)
#include "frontmatter/abbreviations.typ"
#include "frontmatter/symbols.typ"

#pagebreak(weak: true)
#set page(numbering: "1")
#counter(page).update(1)
#counter(heading).update(0)

#include "chapters/chapter-1.typ"
#include "chapters/chapter-2.typ"
#include "chapters/chapter-3.typ"
#include "chapters/chapter-4.typ"
#include "chapters/chapter-5.typ"
#include "chapters/chapter-6.typ"
#include "chapters/chapter-7.typ"

#pagebreak(weak: true)
#bibliography(
  "references.bib",
  title: "DAFTAR PUSTAKA",
  style: "chicago-author-date",
)

#front-title("LAMPIRAN")
#counter(heading).update(0)
#set heading(numbering: "A.1.1")
#include "appendices/appendix-a.typ"
#include "appendices/appendix-b.typ"


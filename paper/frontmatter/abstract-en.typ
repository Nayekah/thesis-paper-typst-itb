#import "../template.typ": *
#import "../metadata.typ": metadata

#abstract-page(
  metadata,
  title: "ABSTRACT",
  document-title: metadata.title-en,
  language: "en",
  author-label: "by",
  keyword-label: "Keywords",
  body: [
    Manual activities in the orange supply chain at collection points—including sorting, weighing, and recording—are inefficient, time-consuming, and prone to error. Although Internet of Things (IoT) solutions can address these issues, a conventional centralized cloud architecture introduces latency that disrupts real-time workflows. This study aims to design and implement a prototype IoT-based smart scale using a decentralized edge-computing approach to reduce latency and improve operational efficiency.

    The prototype method is implemented as dual-processor hardware combining a Raspberry Pi 5 and an ESP32. The system integrates weighing and image-based quality analysis simultaneously. Evaluation results show that the edge-computing prototype responds 43.5\% faster, with an average latency of 18.05 seconds, than the simulated centralized architecture. It also improves overall work-time efficiency by 58.32\% compared with the conventional manual method.

    User acceptance testing involving 30 participants indicates very positive acceptance, with average scores of 5.0/5.0 for ease of use, 4.87/5.0 for interface clarity, and 4.95/5.0 for perceived performance. The decentralized smart-scale implementation is therefore a valid and effective response to latency and inefficiency at collection points. In addition to its technical performance, the system is functional, well accepted by end users, and promising for modernizing agribusiness supply chains.
  ],
  keywords: (
    "smart scale",
    "Internet of Things",
    "edge computing",
    "orange supply chain",
  ),
)


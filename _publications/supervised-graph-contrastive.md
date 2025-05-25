---
layout: publication_spotlight # Use the new layout
title: "Supervised Graph Contrastive Pretraining for Text Classification" # Escape quotes in title
collection: publications
key: supervised-graph-contrastive
authors: "Samujjwal Ghosh, Subhadeep Maji, Maunendra Sankar Desarkar"
affiliation: ""
journal: "In Proceedings of ACM SAC Conference (SAC 2022)"
year: 2022
month: "December" # Use the converted month name
tldr: ""
abstract: "Contrastive pretraining techniques for text classification has been largely studied in an unsupervised setting. However, oftentimes labeled data from related tasks which share label semantics with current task is available. We hypothesize that using this labeled data effectively can lead to better generalization on current task. In this paper, we propose a novel way to effectively utilize labeled data from related tasks with a graph based supervised contrastive learning approach. We formulate a token-graph by extrapolating the supervised information from examples to tokens. Our formulation results in an embedding space where tokens with high/low probability of belonging to same class are near/further-away from one another. We also develop detailed theoretical insights which serve as a motivation for our method. In our experiments with 13 datasets, we show our method outperforms pretraining schemes by 2.5% and also example-level contrastive learning based formulation by 1.8% on average. In addition, we show cross-domain effectiveness of our method in a zero-shot setting by 3.91% on average. Lastly, we also demonstrate our method can be used as a noisy teacher in a knowledge distillation setting to significantly improve performance of transformer based models in low labeled data regime by 4.57% on average."
img: "supervised-graph-contrastive.png"
url: "https://arxiv.org/abs/2112.11389"
pdf: "https://arxiv.org/pdf/2112.11389.pdf"
code: ""
video: ""
bibtex: ""
---

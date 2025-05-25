---
layout: publication_spotlight # Use the new layout
title: "DivHSK: Diverse Headline Generation using Self-Attention based Keyword Selection" # Escape quotes in title
collection: publications
key: divhsk
authors: "Venkatesh E, Kaushal Kumar Maurya, Deepak Kumar and Maunendra Sankar Desarkar"
affiliation: ""
journal: "61st Annual Meeting of the Association for Computational Linguistics (ACL 2023)"
year: 2023
month: "July" # Use the converted month name
tldr: ""
abstract: "Diverse headline generation is an NLP task where given a news article, the goal is to generate multiple headlines that are true to the content of the article, but are different among themselves. This task aims to exhibit and exploit semantically similar one-to-many relationships between a source news article and multiple target headlines. Towards this, we propose a novel model called DIVHSK. It has two components: KEYSELECT for selecting the important keywords, and SEQGEN, for finally generating the multiple diverse headlines. In KEYSELECT, we cluster the self-attention heads of the last layer of the pre-trained encoder and select the mostattentive theme and general keywords from the source article. Then, cluster-specific keyword sets guide the SEQGEN, a pre-trained encoderdecoder model, to generate diverse yet semantically similar headlines. The proposed model consistently outperformed existing literature and our strong baselines and emerged as a stateof-the-art model. Additionally, We have also created a high-quality multi-reference headline dataset from news articles"
img: "divhsk_model_arch.png"
url: "https://aclanthology.org/2023.findings-acl.118/"
pdf: "https://aclanthology.org/2023.findings-acl.118.pdf"
code: "https://github.com/kaushal0494/DivHSK"
video: ""
bibtex: "1"
---

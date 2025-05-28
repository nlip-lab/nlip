---
layout: publication_spotlight
collection: publications
key: select-noise
title: "SelectNoise: Unsupervised Noise Injection to Enable Zero-shot Machine Translation for Extremely Low-resource languages"
authors: "Maharaj Brahma, Kaushal Kumar Maurya, Maunendra Sankar Desarkar"
journal: "Findings of the Association for Computational Linguistics: EMNLP 2023"
year: 2023
month: 10
highlight: 1
url: "https://aclanthology.org/2023.findings-emnlp.109/"
pdf: "https://aclanthology.org/2023.findings-emnlp.109.pdf"
code: "https://github.com/maharajbrahma/selectnoise/"
img: "select-noise-2023.png"
bibtex: 1
summary: "In this work, we focus on the task of machine translation (MT) from extremely low-resource language (ELRLs) to English. The unavailability of parallel data, lack of representation from large multilingual pre-trained models, and limited monolingual data hinder the development of MT systems for ELRLs. However, many ELRLs often share lexical similarities with high-resource languages (HRLs) due to factors such as dialectical variations, geographical proximity, and language structure. We utilize this property to improve cross-lingual signals from closely related HRL to enable MT for ELRLs. Specifically, we propose a novel unsupervised approach, SelectNoise, based on selective candidate extraction and noise injection to generate noisy HRLs training data. The noise injection acts as a regularizer, and the model trained with noisy data learns to handle lexical variations such as spelling, grammar, and vocabulary changes, leading to improved cross-lingual transfer to ELRLs. The selective candidates are extracted using BPE merge operations and edit operations, and noise injection is performed using greedy, top-p, and top-k sampling strategies. We evaluate the proposed model on 12 ELRLs from the FLORES-200 benchmark in a zero-shot setting across two language families. The proposed model outperformed all the strong baselines, demonstrating its efficacy. It has comparable performance with the supervised noise injection model."
---

---
layout: publication_spotlight
collection: publications
key: trie-nlg
title: "Trie-NLG: Trie Context Augmentation to Improve Personalized Query Auto-Completion for Short and Unseen Prefixes"
authors: "Kaushal Kumar Maurya, Maunendra Sankar Desarkar, Manish Gupta, Puneet Agrawal"
journal: "Journal track at European Conference on Machine Learning and Principles and Practice of Knowledge Discovery in Databases (ECML-PKDD 2023)"
year: 2023
month: 7
highlight: 1
url: "https://dl.acm.org/doi/10.1007/s10618-023-00966-0"
code: "https://github.com/kaushal0494/Trie-NLG"
img: "Trie_QAC3.png"
bibtex: 1
summary: "Query auto-completion (QAC) aims at suggesting plausible completions for a given query prefix. Traditionally, QAC systems have leveraged tries curated from historical query logs to suggest most popular completions. In this context, there are two specific scenarios that are difficult to handle for any QAC system: short prefixes (which are inherently ambiguous) and unseen prefixes. Recently, personalized Natural Language Generation (NLG) models have been proposed to leverage previous session queries as context for addressing these two challenges. However, such NLG models suffer from two drawbacks: (1) some of the previous session queries could be noisy and irrelevant to the user intent for the current prefix, and (2) NLG models cannot directly incorporate historical query popularity. We propose a novel NLG model for QAC, Trie-NLG, which jointly leverages popularity signals from trie and personalization signals from previous session queries. We train the Trie-NLG model by augmenting the prefix with rich context comprising of recent session queries and top trie completions. This simple modeling approach overcomes the limitations of trie-based and NLG-based approaches and leads to state-of-the-art performance. We evaluate the Trie-NLG model using two large QAC datasets. On average, our model achieves huge ∼57% and ∼14% boost in MRR over the popular trie-based lookup and the strong BART-based baseline methods, respectively."
---

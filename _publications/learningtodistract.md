---
layout: publication_spotlight # Use the new layout
title: "Learning to Distract: A Hierarchical Multi-Decoder Network for Automated Generation of Long Distractors for Multiple-Choice Questions for Reading Comprehension" # Escape quotes in title
abstract: "The task of generating incorrect options for multiple-choice questions is termed as distractor generation problem. The task requires high cognitive skills and is extremely challenging to automate. Existing neural approaches for the task leverage encoder-decoder architecture to generate long distractors. However, in this process two critical points are ignored - firstly, many methods use Jaccard similarity over a pool of candidate distractors to sample the distractors. This often makes the generated distractors too obvious or not relevant to the question context. Secondly, some approaches did not consider the answer in the model, which caused the generated distractors to be either answer-revealing or semantically equivalent to the answer. In this paper, we propose a novel Hierarchical Multi-Decoder Network (HMD-Net) consisting of one encoder and three decoders, where each decoder generates a single distractor. To overcome the first problem mentioned above, we include multiple decoders with a dis-similarity loss in the loss function. To address the second problem, we exploit richer interaction between the article, question, and answer with a SoftSel operation and a Gated Mechanism. This enables the generation of distractors that are in context with questions but semantically not equivalent to the answers. The proposed model outperformed all the previous approaches significantly in both automatic and manual evaluations. In addition, we also consider linguistic features and BERT contextual embedding with our base model which further push the model performance."
collection: publications
key: learningtodistract
authors: "Kaushal Kumar Maurya and Maunendra Sankar Desarkar"
affiliation: ""
journal: "CIKM 2020: Proceedings of the 29th ACM International Conference on Information & Knowledge Management"
year: 2020
month: "October" # Use the converted month name
tldr: ""
abstract: "The task of generating incorrect options for multiple-choice questions is termed as distractor generation problem. The task requires high cognitive skills and is extremely challenging to automate. Existing neural approaches for the task leverage encoder-decoder architecture to generate long distractors. However, in this process two critical points are ignored - firstly, many methods use Jaccard similarity over a pool of candidate distractors to sample the distractors. This often makes the generated distractors too obvious or not relevant to the question context. Secondly, some approaches did not consider the answer in the model, which caused the generated distractors to be either answer-revealing or semantically equivalent to the answer. In this paper, we propose a novel Hierarchical Multi-Decoder Network (HMD-Net) consisting of one encoder and three decoders, where each decoder generates a single distractor. To overcome the first problem mentioned above, we include multiple decoders with a dis-similarity loss in the loss function. To address the second problem, we exploit richer interaction between the article, question, and answer with a SoftSel operation and a Gated Mechanism. This enables the generation of distractors that are in context with questions but semantically not equivalent to the answers. The proposed model outperformed all the previous approaches significantly in both automatic and manual evaluations. In addition, we also consider linguistic features and BERT contextual embedding with our base model which further push the model performance."
img: "learningtodistract.png"
link: "https://dl.acm.org/doi/abs/10.1145/3340531.3411997"
pdf: "https://dl.acm.org/doi/pdf/10.1145/3340531.3411997"
code: "https://github.com/kaushal0494/HMD_Network"
video: 
bibtex: |
    @inproceedings{10.1145/3340531.3411997,
        author    = {Maurya, Kaushal Kumar and Desarkar, Maunendra Sankar},
        title     = {Learning to Distract: A Hierarchical Multi-Decoder Network for Automated Generation of Long Distractors for Multiple-Choice Questions for Reading Comprehension},
        year      = {2020},
        isbn      = {9781450368599},
        publisher = {Association for Computing Machinery},
        address   = {New York, NY, USA},
        url       = {https://doi.org/10.1145/3340531.3411997},
        doi       = {10.1145/3340531.3411997},
        abstract  = {The task of generating incorrect options for multiple-choice questions is termed as distractor generation problem. The task requires high cognitive skills and is extremely challenging to automate. Existing neural approaches for the task leverage encoder-decoder architecture to generate long distractors. However, in this process two critical points are ignored - firstly, many methods use Jaccard similarity over a pool of candidate distractors to sample the distractors. This often makes the generated distractors too obvious or not relevant to the question context. Secondly, some approaches did not consider the answer in the model, which caused the generated distractors to be either answer-revealing or semantically equivalent to the answer.In this paper, we propose a novel Hierarchical Multi-Decoder Network (HMD-Net) consisting of one encoder and three decoders, where each decoder generates a single distractor. To overcome the first problem mentioned above, we include multiple decoders with a dis-similarity loss in the loss function. To address the second problem, we exploit richer interaction between the article, question, and answer with a SoftSel operation and a Gated Mechanism. This enables the generation of distractors that are in context with questions but semantically not equivalent to the answers. The proposed model outperformed all the previous approaches significantly in both automatic and manual evaluations. In addition, we also consider linguistic features and BERT contextual embedding with our base model which further push the model performance.},
        booktitle = {Proceedings of the 29th ACM International Conference on Information &amp; Knowledge Management},
        pages     = {1115–1124},
        numpages  = {10},
        keywords  = {distractor generation, question-answering, natural language generation},
        location  = {Virtual Event, Ireland},
        series    = {CIKM '20}
    }
---

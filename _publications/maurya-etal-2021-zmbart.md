---
layout: publication_spotlight
collection: publications
key: maurya-etal-2021-zmbart
title: "ZmBART: An Unsupervised Cross-lingual Transfer Framework for Language Generation"
abstract: "Despite the recent advancement in NLP research, cross-lingual transfer for natural language generation is relatively understudied. In this work, we transfer supervision from high resource language (HRL) to multiple lowresource languages (LRLs) for natural language generation (NLG). We consider four NLG tasks (text summarization, question generation, news headline generation, and distractor generation) and three syntactically diverse languages, i.e., English, Hindi, and Japanese. We propose an unsupervised crosslingual language generation framework (called ZmBART) that does not use any parallel or pseudo-parallel/back-translated data. In this framework, we further pre-train mBART sequence-to-sequence denoising auto-encoder model with an auxiliary task using monolingual data of three languages. The objective function of the auxiliary task is close to the target tasks which enriches the multi-lingual latent representation of mBART and provides good initialization for target tasks. Then, this model is fine-tuned with task-specific supervised English data and directly evaluated with low-resource languages in the Zero-shot setting. To overcome catastrophic forgetting and spurious correlation issues, we applied freezing model component and data argumentation approaches respectively. This simple modeling approach gave us promising results. We experimented with few-shot training (with 1000 supervised data-points) which boosted the model performance further. We performed several ablations and cross-lingual transferability analysis to demonstrate the robustness of ZmBART."
authors: "Kaushal Kumar Maurya, Maunendra Sankar Desarkar, Yoshinobu Kano, and Kumari Deepshikha"
journal: "Findings of the Association for Computational Linguistics: ACL-IJCNLP 2021"
year: 2021
month: 8
highlight: 1
link: "https://aclanthology.org/2021.findings-acl.248/"
pdf: "https://aclanthology.org/2021.findings-acl.248.pdf"
code: "https://github.com/kaushal0494/ZmBART"
img: "maurya-etal-2021-zmbart.png"
video: "https://aclanthology.org/2021.findings-acl.248.mp4"
bibtex: |
  @inproceedings{maurya-etal-2021-zmbart,
      title     = {{Z}m{BART}: An Unsupervised Cross-lingual Transfer Framework for Language Generation},
      author    = {Maurya, Kaushal Kumar  and
                  Desarkar, Maunendra Sankar  and
                  Kano, Yoshinobu  and
                  Deepshikha, Kumari},
      booktitle = {Findings of the Association for Computational Linguistics: ACL-IJCNLP 2021},
      month     = aug,
      year      = {2021},
      address   = {Online},
      publisher = {Association for Computational Linguistics},
      url       = {https://aclanthology.org/2021.findings-acl.248},
      doi       = {10.18653/v1/2021.findings-acl.248},
      pages     = {2804--2818}
  }
summary: "We propose an unsupervised crosslingual language generation framework (called ZmBART) that does not use any parallel or pseudo-parallel/back-translated data. In this framework, we further pre-train mBART sequence-to-sequence denoising auto-encoder model with an auxiliary task using monolingual data of three languages. The objective function of the auxiliary task is close to the target tasks which enriches the multi-lingual latent representation of mBART and provides good initialization for target tasks. Then, this model is fine-tuned with task-specific supervised English data and directly evaluated with low-resource languages in the Zero-shot setting."
---

---
layout: publication_spotlight
collection: publications
key: hidst
title: "Hi-DST: A Hierarchical Approach for Scalable and Extensible Dialogue State Tracking"
abstract: "Dialogue State Tracking (DST) is a sub-task of task-based dialogue systems where the user intention is tracked through a set of (domain, slot, slot-value) triplets. Existing DST models can be difficult to extend for new datasets with larger domains/slots mainly due to either of the two reasons- i) prediction of domain-slot as a pair, and ii) dependency of model parameters on the number of slots and domains. In this work, we propose to address these issues using a Hierarchical DST (Hi-DST) model. At a given turn, the model first detects a change in domain followed by domain prediction if required. Then it decides suitable action for each slot in the predicted domains and finds their value accordingly. The model parameters of Hi-DST are independent of the number of domains/slots. Due to the hierarchical modeling, it achieves O(|M|+|N|) belief state prediction for a single turn where M and N are the set of unique domains and slots respectively. We argue that the hierarchical structure helps in the model explainability and makes it easily extensible to new datasets. Experiments on the MultiWOZ dataset show that our proposed model achieves comparable joint accuracy performance to state-of-the-art DST models."
authors: "Suvodip Dey, Maunendra Sankar Desarkar"
journal: "Proceedings of the 22nd Annual Meeting of the Special Interest Group on Discourse and Dialogue"
year: 2021
month: 7
highlight: 1
link: "https://aclanthology.org/2021.sigdial-1.23/"
pdf: "https://aclanthology.org/2021.sigdial-1.23.pdf"
code: "https://github.com/suvodipdey/hi-dst"
img: "hidst.png"
video: "https://www.youtube.com/watch?v=ldnP2Cn_7F0"
bibtex: |
  @inproceedings{dey-desarkar-2021-hi,
      title     = {Hi-{DST}: A Hierarchical Approach for Scalable and Extensible Dialogue State Tracking},
      author    = {Dey, Suvodip  and
                  Desarkar, Maunendra Sankar},
      booktitle = {Proceedings of the 22nd Annual Meeting of the Special Interest Group on Discourse and Dialogue},
      month     = jul,
      year      = {2021},
      address   = {Singapore and Online},
      publisher = {Association for Computational Linguistics},
      url       = {https://aclanthology.org/2021.sigdial-1.23},
      pages     = {218--227},
      abstract  = {Dialogue State Tracking (DST) is a sub-task of task-based dialogue systems where the user intention is tracked through a set of (domain, slot, slot-value) triplets. Existing DST models can be difficult to extend for new datasets with larger domains/slots mainly due to either of the two reasons- i) prediction of domain-slot as a pair, and ii) dependency of model parameters on the number of slots and domains. In this work, we propose to address these issues using a Hierarchical DST (Hi-DST) model. At a given turn, the model first detects a change in domain followed by domain prediction if required. Then it decides suitable action for each slot in the predicted domains and finds their value accordingly. The model parameters of Hi-DST are independent of the number of domains/slots. Due to the hierarchical modeling, it achieves O(|M|+|N|) belief state prediction for a single turn where M and N are the set of unique domains and slots respectively. We argue that the hierarchical structure helps in the model explainability and makes it easily extensible to new datasets. Experiments on the MultiWOZ dataset show that our proposed model achieves comparable joint accuracy performance to state-of-the-art DST models.}
  }
summary: "In this work, we propose to address these issues using a Hierarchical DST (Hi-DST) model. At a given turn, the model first detects a change in domain followed by domain prediction if required. Then it decides suitable action for each slot in the predicted domains and finds their value accordingly. The model parameters of Hi-DST are independent of the number of domains/slots. Due to the hierarchical modeling, it achieves O(|M|+|N|) belief state prediction for a single turn where M and N are the set of unique domains and slots respectively."
---

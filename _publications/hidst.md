---
layout: publication_spotlight # Use the new layout
title: "Hi-DST: A Hierarchical Approach for Scalable and Extensible Dialogue State Tracking" # Escape quotes in title
collection: publications
key: hidst
authors: "Suvodip Dey, Maunendra Sankar Desarkar"
affiliation: ""
journal: "Proceedings of the 22nd Annual Meeting of the Special Interest Group on Discourse and Dialogue"
year: 2021
month: "July" # Use the converted month name
tldr: ""
abstract: "Dialogue State Tracking (DST) is a sub-task of task-based dialogue systems where the user intention is tracked through a set of (domain, slot, slot-value) triplets. Existing DST models can be difficult to extend for new datasets with larger domains/slots mainly due to either of the two reasons- i) prediction of domain-slot as a pair, and ii) dependency of model parameters on the number of slots and domains. In this work, we propose to address these issues using a Hierarchical DST (Hi-DST) model. At a given turn, the model first detects a change in domain followed by domain prediction if required. Then it decides suitable action for each slot in the predicted domains and finds their value accordingly. The model parameters of Hi-DST are independent of the number of domains/slots. Due to the hierarchical modeling, it achieves O(|M|+|N|) belief state prediction for a single turn where M and N are the set of unique domains and slots respectively. We argue that the hierarchical structure helps in the model explainability and makes it easily extensible to new datasets. Experiments on the MultiWOZ dataset show that our proposed model achieves comparable joint accuracy performance to state-of-the-art DST models."
img: "hidst.png"
url: "https://aclanthology.org/2021.sigdial-1.23/"
pdf: "https://aclanthology.org/2021.sigdial-1.23.pdf"
code: "https://github.com/suvodipdey/hi-dst"
video: "https://www.youtube.com/watch?v=ldnP2Cn_7F0"
bibtex: "1"
---

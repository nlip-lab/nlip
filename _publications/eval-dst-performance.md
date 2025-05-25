---
layout: publication_spotlight # Use the new layout
title: "Towards Fair Evaluation of Dialogue State Tracking by Flexible Incorporation of Turn-level Performances" # Escape quotes in title
collection: publications
key: eval-dst-performance
authors: "Suvodip Dey, Ramamohan Kummara, Maunendra Sankar Desarkar"
affiliation: ""
journal: "Proceedings of the 60th Annual Meeting of the Association for Computational Linguistics (Volume 2: Short Papers)"
year: 2022
month: "May" # Use the converted month name
tldr: ""
abstract: "Dialogue State Tracking (DST) is primarily evaluated using Joint Goal Accuracy (JGA) defined as the fraction of turns where the ground-truth dialogue state exactly matches the prediction. Generally in DST, the dialogue state or belief state for a given turn contain all the intents shown by the user till that turn. Due to this cumulative nature of the belief state, it is difficult to get a correct prediction once a misprediction has occurred. Thus, although being a useful metric, it can be harsh at times and underestimate the true potential of a DST model. Moreover, an improvement in JGA can sometimes decrease the performance of turn-level or non-cumulative belief state prediction due to inconsistency in annotations. So, using JGA as the only metric for model selection may not be ideal for all scenarios. In this work, we discuss various evaluation metrics used for DST along with their shortcomings. To address the existing issues, we propose a new evaluation metric named Flexible Goal Accuracy (FGA). FGA is a generalized version of JGA. But unlike JGA, it tries to give penalized rewards to mispredictions that are locally correct i.e. the root cause of the error is an earlier turn. By doing so, FGA considers the performance of both cumulative and turn-level prediction flexibly and provides a better insight than the existing metrics. We also show that FGA is a better discriminator of DST model performance."
img: "eval-dst-performance-new.png"
url: "https://aclanthology.org/2022.acl-short.35/"
pdf: "https://aclanthology.org/2022.acl-short.35.pdf"
code: "https://github.com/suvodipdey/fga"
video: ""
bibtex: "1"
---

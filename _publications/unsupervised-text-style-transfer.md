---
layout: publication_spotlight # Use the new layout
title: "Towards Robust and Semantically Organised Latent Representations for Unsupervised Text Style Transfer" # Escape quotes in title
collection: publications
key: unsupervised-text-style-transfer
authors: "Sharan Narasimhan, Suvodip Dey, Maundendra Sankar Desarkar"
affiliation: ""
journal: "Proceedings of the 2022 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies"
year: 2022
month: "May" # Use the converted month name
tldr: ""
abstract: "Recent studies show that auto-encoder based approaches successfully perform language generation, smooth sentence interpolation, and style transfer over unseen attributes using unlabelled datasets in a zero-shot manner. The latent space geometry of such models is organised well enough to perform on datasets where the style is 'coarse-grained' i.e. a small fraction of words alone in a sentence are enough to determine the overall style label. A recent study uses a discrete token-based perturbation approach to map 'similar' sentences ('similar' defined by low Levenshtein distance/ high word overlap) close by in latent space. This definition of 'similarity' does not look into the underlying nuances of the constituent words while mapping latent space neighbourhoods and therefore fails to recognise sentences with different style-based semantics while mapping latent neighbourhoods. We introduce EPAAEs (Embedding Perturbed Adversarial AutoEncoders) which completes this perturbation model, by adding a finely adjustable noise component on the continuous embeddings space. We empirically show that this (a) produces a better organised latent space that clusters stylistically similar sentences together, (b) performs best on a diverse set of text style transfer tasks than similar denoising-inspired baselines, and (c) is capable of fine-grained control of Style Transfer strength. We also extend the text style transfer tasks to NLI datasets and show that these more complex definitions of style are learned best by EPAAE. To the best of our knowledge, extending style transfer to NLI tasks has not been explored before."
img: "unsupervised-text-style-transfer.png"
url: "https://aclanthology.org/2022.naacl-main.34/"
pdf: "https://aclanthology.org/2022.naacl-main.34.pdf"
code: "https://github.com/sharan21/EPAAE"
video: "https://aclanthology.org/2022.naacl-main.34.mp4"
bibtex: "1"
---

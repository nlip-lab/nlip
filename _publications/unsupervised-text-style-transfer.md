---
layout: publication_spotlight
collection: publications
key: unsupervised-text-style-transfer
title: "Towards Robust and Semantically Organised Latent Representations for Unsupervised Text Style Transfer"
abstract: Recent studies show that auto-encoder based approaches successfully perform language generation, smooth sentence interpolation, and style transfer over unseen attributes using unlabelled datasets in a zero-shot manner. The latent space geometry of such models is organised well enough to perform on datasets where the style is 'coarse-grained' i.e. a small fraction of words alone in a sentence are enough to determine the overall style label. A recent study uses a discrete token-based perturbation approach to map 'similar' sentences ('similar' defined by low Levenshtein distance/ high word overlap) close by in latent space. This definition of 'similarity' does not look into the underlying nuances of the constituent words while mapping latent space neighbourhoods and therefore fails to recognise sentences with different style-based semantics while mapping latent neighbourhoods. We introduce EPAAEs (Embedding Perturbed Adversarial AutoEncoders) which completes this perturbation model, by adding a finely adjustable noise component on the continuous embeddings space. We empirically show that this (a) produces a better organised latent space that clusters stylistically similar sentences together, (b) performs best on a diverse set of text style transfer tasks than similar denoising-inspired baselines, and (c) is capable of fine-grained control of Style Transfer strength. We also extend the text style transfer tasks to NLI datasets and show that these more complex definitions of style are learned best by EPAAE. To the best of our knowledge, extending style transfer to NLI tasks has not been explored before.
authors: "Sharan Narasimhan, Suvodip Dey, Maundendra Sankar Desarkar"
journal: "Proceedings of the 2022 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies"
year: 2022
month: 5
highlight: 1
link: "https://aclanthology.org/2022.naacl-main.34/"
pdf: "https://aclanthology.org/2022.naacl-main.34.pdf"
code: "https://github.com/sharan21/EPAAE"
img: "unsupervised-text-style-transfer.png"
video: "https://aclanthology.org/2022.naacl-main.34.mp4"
bibtex: |
  @inproceedings{narasimhan-etal-2022-towards,
      title     = {Towards Robust and Semantically Organised Latent Representations for Unsupervised Text Style Transfer},
      author    = {Narasimhan, Sharan  and Dey, Suvodip  and Desarkar, Maunendra},
      booktitle = {Proceedings of the 2022 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies},
      month     = jul,
      year      = {2022},
      address   = {Seattle, United States},
      publisher = {Association for Computational Linguistics},
      url       = {https://aclanthology.org/2022.naacl-main.34},
      doi       = {10.18653/v1/2022.naacl-main.34},
      pages     = {456--474},
      abstract  = {Recent studies show that auto-encoder based approaches successfully perform language generation, smooth sentence interpolation, and style transfer over unseen attributes using unlabelled datasets in a zero-shot manner. The latent space geometry of such models is organised well enough to perform on datasets where the style is {``}coarse-grained{''} i.e. a small fraction of words alone in a sentence are enough to determine the overall style label. A recent study uses a discrete token-based perturbation approach to map {``}similar{''} sentences ({``}similar{''} defined by low Levenshtein distance/ high word overlap) close by in latent space. This definition of {``}similarity{''} does not look into the underlying nuances of the constituent words while mapping latent space neighbourhoods and therefore fails to recognise sentences with different style-based semantics while mapping latent neighbourhoods. We introduce EPAAEs (Embedding Perturbed Adversarial AutoEncoders) which completes this perturbation model, by adding a finely adjustable noise component on the continuous embeddings space. We empirically show that this (a) produces a better organised latent space that clusters stylistically similar sentences together, (b) performs best on a diverse set of text style transfer tasks than its counterparts, and (c) is capable of fine-grained control of Style Transfer strength. We also extend the text style transfer tasks to NLI datasets and show that these more complex definitions of style are learned best by EPAAE. To the best of our knowledge, extending style transfer to NLI tasks has not been explored before.}
  }
summary: "We introduce EPAAEs (Embedding Perturbed Adversarial AutoEncoders) which completes this perturbation model, by adding a finely adjustable noise component on the continuous embeddings space. We empirically show that this (a) produces a better organised latent space that clusters stylistically similar sentences together, (b) performs best on a diverse set of text style transfer tasks than similar denoising-inspired baselines, and (c) is capable of fine-grained control of Style Transfer strength."
---

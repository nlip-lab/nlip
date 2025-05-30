---
layout: publication_spotlight
collection: publications
key: text-style-transfer
title: "On Text Style Transfer via Style-Aware Masked Language Models"
authors: "Sharan Narasimhan, Pooja Shekar,  Suvodip Dey, Maunendra Sankar Desarkar"
journal: "16th International Natural Language Generation Conference (INLG 2023)"
abstract: "Text Style Transfer (TST) involves transforming a source sentence with a given style label to an output with another target style meanwhile preserving content and fluency. We look at a fill-in-the-blanks approach (also referred to as prototype editing), where the source sentence is stripped off all style-containing words and filled in with suitable words. This closely resembles a Masked Language Model (MLM) objective, with the added initial step of masking only relevant style words rather than BERT's random masking. We show this simple MLM, trained to reconstruct style-masked sentences back into their original style, can even transfer style by making this MLM Style-Aware. This simply involves appending the source sentence with a target style special token. The Style-Aware MLM (SA-MLM), now also accounts for the direction of style transfer and enables style transfer by simply manipulating these special tokens. To learn this n-word to n-word style reconstruction task, we use a single transformer encoder block with 8 heads, 2 layers and no auto-regressive decoder, making it non-generational. We empirically show that this lightweight encoder trained on a simple reconstruction task compares with elaborately engineered state-of-the-art TST models for even complex styles like Discourse or flow of logic, i.e. Contradiction to Entailment and vice-versa. Additionally, we introduce a more accurate attention-based style-masking step and a novel attention-surplus method to determine the position of masks from any arbitrary attribution model in O(1) time. Finally, we show that the SA-MLM arises naturally by considering a probabilistic framework for style transfer."
year: 2023
month: 7
highlight: 0
link: "https://aclanthology.org/2023.inlg-main.25/"
pdf: "https://aclanthology.org/2023.inlg-main.25.pdf"
code: "https://github.com/sharan21/Style-Masked-Language-Model"
bibtex: |
  @inproceedings{narasimhan-etal-2023-text,
      title     = {On Text Style Transfer via Style-Aware Masked Language Models},
      author    = {Narasimhan, Sharan  and
                  H, Pooja  and
                  Dey, Suvodip  and
                  Desarkar, Maunendra Sankar},
      editor    = {Keet, C. Maria  and
                  Lee, Hung-Yi  and
                  Zarrie{\ss}, Sina},
      booktitle = {Proceedings of the 16th International Natural Language Generation Conference},
      month     = sep,
      year      = {2023},
      address   = {Prague, Czechia},
      publisher = {Association for Computational Linguistics},
      url       = {https://aclanthology.org/2023.inlg-main.25/},
      doi       = {10.18653/v1/2023.inlg-main.25},
      pages     = {362--374},
      abstract  = {Text Style Transfer (TST) is performable through approaches such as latent space disentanglement, cycle-consistency losses, prototype editing etc. The prototype editing approach, which is known to be quite successful in TST, involves two key phases a) Masking of source style-associated tokens and b) Reconstruction of this source-style masked sentence conditioned with the target style. We follow a similar transduction method, in which we transpose the more difficult direct source to target TST task to a simpler Style-Masked Language Model (SMLM) Task, wherein, similar to BERT (CITATION), the goal of our model is now to reconstruct the source sentence from its style-masked version. We arrive at the SMLM mechanism naturally by formulating prototype editing/ transduction methods in a probabilistic framework, where TST resolves into estimating a hypothetical parallel dataset from a partially observed parallel dataset, wherein each domain is assumed to have a common latent style-masked prior. To generate this style-masked prior, we use {\textquotedblleft}Explainable Attention{\textquotedblright} as our choice of attribution for a more precise style-masking step and also introduce a cost-effective and accurate {\textquotedblleft}Attribution-Surplus{\textquotedblright} method of determining the position of masks from any arbitrary attribution model in O(1) time. We empirically show that this non-generational approach well suites the {\textquotedblleft}content preserving{\textquotedblright} criteria for a task like TST, even for a complex style like Discourse Manipulation. Our model, the Style MLM, outperforms strong TST baselines and is on par with state-of-the-art TST models, which use complex architectures and orders of more parameters.}
  }
summary: "Text Style Transfer (TST) involves transforming a source sentence with a given style label to an output with another target style meanwhile preserving content and fluency. We look at a fill-in-the-blanks approach (also referred to as prototype editing), where the source sentence is stripped off all style-containing words and filled in with suitable words. We proposed a simple MLM, trained to reconstruct style-masked sentences back into their original style, can even transfer style by making this MLM Style-Aware. We empirically show that this lightweight encoder trained on a simple reconstruction task compares with elaborately engineered state-of-the-art TST models for even complex styles like Discourse or flow of logic. Additionally, we introduce a more accurate attention-based style-masking step and a novel attention-surplus method to determine the position of masks from any arbitrary attribution model in O(1) time. Finally, we show that the SA-MLM arises naturally by considering a probabilistic framework for style transfer."
---

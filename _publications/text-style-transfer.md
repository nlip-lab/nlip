---
layout: publication_spotlight # Use the new layout
title: "On Text Style Transfer via Style-Aware Masked Language Models" # Escape quotes in title
collection: publications
key: text-style-transfer
authors: "Sharan Narasimhan, Pooja Shekar,  Suvodip Dey, Maunendra Sankar Desarkar"
affiliation: ""
journal: "16th International Natural Language Generation Conference (INLG 2023)"
year: 2023
month: "July" # Use the converted month name
tldr: ""
abstract: "Text Style Transfer (TST) involves transforming a source sentence with a given style label to an output with another target style meanwhile preserving content and fluency. We look at a fill-in-the-blanks approach (also referred to as prototype editing), where the source sentence is stripped off all style-containing words and filled in with suitable words. This closely resembles a Masked Language Model (MLM) objective, with the added initial step of masking only relevant style words rather than BERT's random masking. We show this simple MLM, trained to reconstruct style-masked sentences back into their original style, can even transfer style by making this MLM Style-Aware. This simply involves appending the source sentence with a target style special token. The Style-Aware MLM (SA-MLM), now also accounts for the direction of style transfer and enables style transfer by simply manipulating these special tokens. To learn this n-word to n-word style reconstruction task, we use a single transformer encoder block with 8 heads, 2 layers and no auto-regressive decoder, making it non-generational. We empirically show that this lightweight encoder trained on a simple reconstruction task compares with elaborately engineered state-of-the-art TST models for even complex styles like Discourse or flow of logic, i.e. Contradiction to Entailment and vice-versa. Additionally, we introduce a more accurate attention-based style-masking step and a novel attention-surplus method to determine the position of masks from any arbitrary attribution model in O(1) time. Finally, we show that the SA-MLM arises naturally by considering a probabilistic framework for style transfer."
img: ""
url: ""
pdf: ""
code: ""
video: ""
bibtex: "0"
---

---
layout: publication_spotlight
collections: publications
key: unified_emotion
title: "A Unified View on Emotion Representation in Large Language Models"
authors: "[Aishwarya Maheswaran](https://quartz14.github.io/my_website/), [Maunendra Sankar Desarkar](https://nlip-lab.github.io/nlip/people/maunendra/index.html)"
affiliation: "Natural Language and Information Processing Lab (NLIP)<br>Indian Institute of Technology Hyderabad<br>Hyderabad, India"
journal: "EACL 2026"
pdf: "https://aclanthology.org/2026.eacl-long.165.pdf"
code: "https://github.com/Quartz14/unify_emo_probing"
link: "https://aclanthology.org/2026.eacl-long.165.pdf"
journal_url: "https://aclanthology.org/2026.eacl-long.165/"
abstract: "Interest in leveraging Large Language Models (LLMs) for emotional support systems motivates the need to understand how these models comprehend and represent emotions internally. While recent works show the presence of emotion concepts in the hidden state representations, it’s unclear if the model has a robust representation that is consistent across different datasets. In this paper, we present a unified view to understand emotion representation in LLMs, experimenting with diverse datasets and prompts. We then evaluate the reasoning ability of the models on a complex emotion identification task. We find that LLMs have a common emotion representation in the later layers of the model, and the vectors capturing the direction of emotions extracted from these representations can be interchanged among datasets with minimal impact on performance. Our analysis of reasoning with Chain of Thought (CoT) prompting shows the limits of emotion comprehension. Therefore, despite LLMs implicitly having emotion representations, they are not equally skilled at reasoning with them in complex scenarios. This motivates the need for further research to find new approaches."
year: 2026
month: 3
highlight: 1
summary: "Interest in leveraging Large Language Models (LLMs) for emotional support systems motivates the need to understand how these models comprehend and represent emotions internally. While recent works show the presence of emotion concepts in the hidden state representations, it’s unclear if the model has a robust representation that is consistent across different datasets. In this paper, we present a unified view to understand emotion representation in LLMs, experimenting with diverse datasets and prompts. We then evaluate the reasoning ability of the models on a complex emotion identification task. We find that LLMs have a common emotion representation in the later layers of the model, and the vectors capturing the direction of emotions extracted from these representations can be interchanged among datasets with minimal impact on performance. Our analysis of reasoning with Chain of Thought (CoT) prompting shows the limits of emotion comprehension. Therefore, despite LLMs implicitly having emotion representations, they are not equally skilled at reasoning with them in complex scenarios. This motivates the need for further research to find new approaches."
# teaser_img: "unified_emotion_eacl_26.png"
# teaser_caption: "Probing methodology"
other_content: 1
content_title_1: "Motivation"
content_content_1: "Although several works have used interpretability techniques to understand emotion identification capabilities of LLMs, there are contradictions in the findings regarding the layers early / middle where emotion representation exists. We opine that these contradictions arise from the use of different prompts and datasets with different difficulty levels. Our intent is to analyze the setup using prompts with varying expressivity across datasets of different difficulty levels, to gain an overall understanding of LLMs' ability to identify emotions at the representation level. We then assess the reasoning ability of such models with an emotion comprehension task."
content_image_1: "unified_emotion_eacl_26.png"
content_title_2: "Key Findings"
content_content_2: "1) Using probing techniques, we show that layers with emotion representation depend on the instruction prompt and the clarity with which emotion is expressed in the input data.
<img src='/nlip/publications/images/unified_emotion_eacl26_1.png' alt='Probing Llama-3.1-8B 6-emotion results'>
<br>
2) There exist intrinsic emotion reading vectors that are similar across datasets (in later layers) and can be used interchangeably, revealing their foundational nature.
<img src='/nlip/publications/images/unified_emotion_eacl26_2.png' alt='Probing Llama-3.1-8B 6-emotion results'>
<br>
3) LLMs' performance on emotion reasoning tasks remains poor. We observe that CoT mostly generates reasoning traces to increase it confidence in its original answer, especially when the model is confident in it.
<br>
4) This motivates the need for methods that leverage implicit emotion representations to improve LLMs' explicit reasoning capabilities.
"
content_image_2: "eacl_26.png"
---
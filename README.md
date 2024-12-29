This repository is for the paper [**Neural News Recommendation with Collaborative News Encoding and Structural User Encoding** (EMNLP-2021 Findings)](https://aclanthology.org/2021.findings-emnlp.5.pdf).
<br/><br/>

## Dataset Preparation
The experiments are conducted on the 200k-MIND dataset. Our code will try to download and sample the 200k-MIND dataset to the directory `../MIND-200k` (see Line 140 of `config.py` and `prepare_MIND_dataset.py`).

Since the MIND dataset is quite large, if our code cannot download it successfully due to unstable network connection, please execute the shell file `download_extract_MIND.sh` instead. If the automatic download still fails, we recommend to download the MIND dataset and knowledge graph manually according to the links in `download_extract_MIND.sh`.

Assume that now the pwd is `./NNR`, the downloaded and extracted MIND dataset should be organized as

    (terminal) $ bash download_extract_MIND.sh # Assume this command is executed successfully
    (terminal) $ cd ../MIND-200k && tree -L 2
    (terminal) $ .
                 ├── dev
                 │   ├── behaviors.tsv
                 │   ├── entity_embedding.vec
                 │   ├── news.tsv
                 │   ├── __placeholder__
                 │   └── relation_embedding.vec
                 ├── dev.zip
                 ├── train
                 │   ├── behaviors.tsv
                 │   ├── entity_embedding.vec
                 │   ├── news.tsv
                 │   ├── __placeholder__
                 │   └── relation_embedding.vec
                 ├── train.zip
                 ├── wikidata-graph
                 │   ├── description.txt
                 │   ├── label.txt
                 │   └── wikidata-graph.tsv
                 └── wikidata-graph.zip
<br/>

## Environment Requirements
Dependencies are needed to be installed by
<pre><code>bash install_dependencies.sh</code></pre>
Our experiments require python>=3.7, torch==1.12.1, and torch_scatter==2.0.9. The [torch_scatter](https://github.com/rusty1s/pytorch_scatter) package is necessary. If the dependency installation fails, please follow [https://github.com/rusty1s/pytorch_scatter](https://github.com/rusty1s/pytorch_scatter) to install the package manually.
<br/><br/>

## Experiment Running
<hr>Our Model
<pre><code>python main.py --news_encoder=CNE --user_encoder=SUE</code></pre>

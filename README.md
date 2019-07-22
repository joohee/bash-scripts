### bash scripts 

#### introduction
- This is Joohee's useful bash scripts that I used. 

#### environments
- If you want to use cloudfront directory scripts, first you have to install a AWS cli using python. (recommedation: anaconda/miniconda)
- After you install python environment of python, execute a command below.
  `pip install -r requirements.txt`
- I used python 3, and if you want to use python 2 the script might not be executed properly. 

#### descriptions
```
├── bastion
│   └── conn.sh : used to connect another servers. 
├── cloudfront
│   └── invalidate-cache.sh : invalidate cache when you use cloudfront.
├── elasticsearch
    └── delete-old-indice.sh : delete indices with date pattern and expiration date if you want. 
```
- 

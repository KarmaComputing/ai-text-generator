# AI Text Generator

Use with care.

- https://www.turing.ac.uk/sites/default/files/2019-08/understanding_artificial_intelligence_ethics_and_safety.pdf
- https://plato.stanford.edu/entries/ethics-ai/

needed:

```
python-dev # e.g. apt install python3.8-dev
libpng-dev 
libjpeg-dev
```

```
./install.sh
```

# Usage

Generate text based on promt
```
curl -d prompt='What is the meaning of life?' http://127.0.0.1:5000/generate
```

Get longer text (takes longer to generate)
```
curl -d max_length=200 -d prompt='What is the meaning of life?' http://127.0.0.1:5000/generate
```

# References

```
@software{gpt-neo,
  author       = {Black, Sid and
                  Gao, Leo and
                  Wang, Phil and
                  Leahy, Connor and
                  Biderman, Stella},
  title        = {{GPT-Neo: Large Scale Autoregressive Language 
                   Modeling with Mesh-Tensorflow}},
  month        = mar,
  year         = 2021,
  note         = {{If you use this software, please cite it using 
                   these metadata.}},
  publisher    = {Zenodo},
  version      = {1.0},
  doi          = {10.5281/zenodo.5297715},
  url          = {https://doi.org/10.5281/zenodo.5297715}
}
```


<!-- README.md is generated from README.Rmd. Please edit that file -->

# simpletextr

The goal of simpletextr is to create simple Natural Language Processing
functions that take care of the pre-processing and allow the user to
focus on the task and the output. This would be most useful where the
objective is to extract something from a vector of text.

There are some common NLP or text-mining tasks to begin with could be
entity extraction (people, places), keyword extraction and perhaps even
topic modelling or text classification.

The functions would all be self-descriptive so: `extract_place()`,
`extract_people()`, `extract_topics()` etc.

Inputs would be simple vectors of text and outputs a vector or list of
the same length. So this could easily slot into a tidy workflow:

``` r
df %>%
  mutate(keywords = extract_keywords(text_column))
```

The most complex part of NLP is the pre-processing. But I suspect (hope)
it would be possible to setup a robust and generic process. And I think
for 90% of use cases a generic pre-processing with only a few options
would be sufficient.

The question I have is whether or not something like this already
exists, I will check.

## Installation

You can install the released version of simpletextr from
[Github](https://github.com/ropenscilabs/simpletextr) with:

``` r
devtools::install_github("ropenscilabs/simpletextr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
## basic example code
```

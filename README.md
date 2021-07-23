# Sharing configs, templates, and presentations

General reading rules:

File structures are (pseudo-)illustrated in code blocks. A `//` following the file structure line indicates the corresponding path of such file (directory) in a normal use case, or other important notes.

## Orgainized by content

## Presentations

Slides and reference materials for presentations can be found under `_slides`. Files are commonly named following the convention of `date-occassion-topic`.

## Vim

Vim-related contents can be found under `vim/`, including example codes for `.vimrc` files (not necessarily a full `.vimrc` file and use with your own edits) and vim plugins and settings (often seen under `~/.vim` on the operating system).

## Orgainized by occassions

### 20210723 Lab 10-min talk: vim tricks

The following files are directly relevant to the talk:

```
(base directory)
└ vim
  ├ vimrc //add code in ~/.vimrc
  └ vim_config //corresponding to ~/.vim and the its nesting structures
    └ templates
      ├ skeleton.py
      ├ skeleton.R
      └ skeleton.sh
```

The slides (as a PDF file) can be found [here](_slides/20210723-lab10min-vimPlugin.pdf).

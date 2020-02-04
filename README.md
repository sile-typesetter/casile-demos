# CaSILE Demos

Think of this repository as if it was _your_ book project. This will show some samples of what it might look like to organize a book and its contents for publishing using [CaSILE][casile].

Get started by cloning this repository and initializing the toolkit:

```sh
git clone https://github.com/alerque/casile-demos.git
cd casile-demos
git submodule update --init --remote
make init
```

# A Very Simple Book

The presence of the two files `simple_book.md` and `simple_book.yml` together in the git repository are enough to convince CaSILE that you have a book project on your hands.

This book uses the default settings for this repository. At a mimimum:

* A project URL has been specified in the makefile.
* A matching pair of `<name>.md` and `<name>.yml` makes a book.
* The Markdown file has content and the YAML metadata defines a title.

Two additional settings beyond the minimum are setting a separate directory for finished products to land in (`PUBDIR`) and paring the expected output formats down to just *pdfs* and *epub* (by default all possible formats are generated).

You can build it with the default options like this:

```
make simple_book
```

The output of this should be a `pub` directory with a couple files such as `simple_book-a4-print.pdf` (note *a4* is the default paper size and *print* is the default binding layout) as well as `simple_book.epub`.

# A Slightly Fancier Book

It's possible to be a bit more creative with your source files. Because all Markdown is pre-processed you can use `m4` (or even a templating language of your choosing) to bring multiple sources together.

For example `fancy_book.md` doesn't actually have any content, it is just a placeholder that loads chapter files from a directory.

You can also directly build any arbitrary output:

```
make fancy_book-cep-paperback.pdf
```

[casile]: https://github.com/alerque/casile

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

You can build it with the default options like this:

```
make simple_book
```

The output of this should be a `pub` directory with `book-a4-print.pdf`.

[casile]: https://github.com/alerque/casile

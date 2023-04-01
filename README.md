# DHBW-Latex-Template <!-- omit in toc -->

<img src="https://user-images.githubusercontent.com/57755160/229297351-211facd5-dfa2-413e-88ff-2fe0858c5d24.jpg" width="400" />

## Table of Contents <!-- omit in toc -->
- [Introduction](#introduction)
- [How to Use](#how-to-use)
  - [Matters](#matters)
  - [Folders and Files](#folders-and-files)
  - [Acronyms and Glossaries](#acronyms-and-glossaries)
  - [Tables](#tables)
- [Building](#building)
  - [Prerequisites](#prerequisites)
  - [Compiling](#compiling)
  - [Texstudio](#texstudio)
  - [Overleaf](#overleaf)
- [Getting Help](#getting-help)
- [Improvements](#improvements)

---

## Introduction
This repository provides a template for English papers written at the DHBW. It should be suitable for all kind of works but is currently set up for a Bachelor's thesis.

It tries to reduce the complexity as much as possible, to be easily maintainable and upgradable. But it is also easily configurable with custom variables and the preamble in a separate file.

## How to Use
### Matters
The work is divided into three matters:
* **Frontmatter:**
  This contains everything in front of the main part. E.g.:
  * Abstract
  * Table of Contents
  * List of Tables/Figures/Listings
  * Declaration
* **Mainmatter:**
  This is your main part containing all your chapters.
* **Backmatter:**
  This contains everything coming after your main part. E.g.:
  * Literature
  * Glossary
  * Appendix

### Folders and Files
All folders are prefixed with an index to keep a logical order instead of an alphabetical one.

The folders `01-frontmatter`, `02-mainmatter` and `03-backmatter` contain the logical parts of the paper discussed in the previous chapter.

The folder `04-images` contain images used in the work.

In the `preamble.tex` file are all packages and some scripts loaded. Everything should be documented accordingly. This is the place where you should put your packages, if you are missing some. Also things like the font can be adjusted here.

To customize the variables used in this document like the title, modify the `variables.tex` file.

The main file of the document is the `main.tex` file. Here you can add chapters and other files.

Feel free to modify the folder structure to your needs. E.g. adding a resources folder.

### Acronyms and Glossaries
I decided to use the **glossaries** package for glossaries and for acronyms, as well. It might be weird to not use the **acronyms** package, but it wouldn't allow to alphabetically sort the entries. Also it further reduces complexity.

So keep in mind to use `\gls` for acronyms. Examples are provided in the sources.

### Tables
I started to solely use the package [tabularray](https://ctan.org/pkg/tabularray) for my tables. They need a bit longer to compile but look awesome! And the package is very well documented.

## Building
### Prerequisites
* Perl 5
* Tex Live 2022 (Miktex will probably work, too)

This template was made using texlive-full (2022) and Perl 5. It will most probably also work with Miktex and more recent versions of Tex Live.

### Compiling
**latexmk** is used to compile the document it automates the usage of biber and pdflatex. It is shipped with Miktex and Texlive, so you don't need to install anything additionally.

To compile the document use:
```bash
latexmk
```

To clean up auxillary files use:
```bash
latexmk -c
```

### Texstudio
In Texstudio you can set the default compiler to **latexmk**. And it should work fine.

### Overleaf
Overleaf should pick up the **latexmkrc** file just fine. And use latexmk to compile automatically.

## Getting Help
If you have read this README, looked into the comments in the templates sources and tried to google the problem and still have bugs or issues, feel free to open an issue. I will try to answer asap.

## Improvements
If you have any suggestions to improve the template, feel free to open an issue, create a fork or create a pull request (after opening an issue).

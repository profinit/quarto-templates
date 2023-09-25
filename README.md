# Quarto Templates

This project is an implementation of Profinit templates for Quarto.

Important links:

- Profinit internal repository: https://git.profinit.eu/datascience/sablony/quarto-templates. This is where the project is developed.
- Public GitHub repository: https://github.com/profinit/quarto-templates. **Only for distribution, not for development!** Updated per-release.
- Documentation: https://datascience.profinitservices.cz/sablony/quarto-templates/.

## Prerequisites

- Quarto.
- (Optional) Python: only needed if we are using Python for code blocks. If we do not want to use the default installation, we should have our Python activated.
- (Optional) R: only needed if we are using R code blocks.

### Python: Packages

In Python, we want to have the following packages installed:

- `jupyter`: necessary for generating reports.
- (Recommended) `tabulate`: recommended for better handling of tables.

## Quick Tryout

With the following procedure, we can very quickly try the Profinit template on a pre-prepared file.

```sh
quarto use template profinit/quarto-templates
```

This will install all necessary files either in the current directory or in a chosen subdirectory. Among other things, `template.qmd` will be downloaded, on which we can easily try the templates.

```sh
cd /path/to/dir/with/template/qmd
quarto render template.qmd --to profinit-html
```

## Installation

Suppose we have some `template.qmd` file that we want to render using Quarto. Now we may want

Before installing, we must first go to the directory where this file is.

```sh
cd /path/to/file/qmd/directory
```

Now into this directory, we will install the Profinit Quarto templates.

```bash
quarto add profinit/quarto-templates
```

This command will add the `_extensions` folder to the working directory.

## Usage

Now we are in the directory with `template.qmd`. When rendering, the directory from which we are running the rendering must have the Profinit Quarto templates installed. Now using the following commands.

### Html

```bash
quarto render template.qmd --to profinit-html
```

### Pdf

```bash
quarto render template.qmd --to profinit-pdf
```

### Revealjs

```bash
quarto render template.qmd --to profinit-revealjs
```

### Docx

```bash
quarto render template.qmd --to profinit-docx
```

### All Configured Formats

Quarto can also be used to render all configured formats in the Quarto header:

```sh
quarto render template.qmd
```

Note that this can sometimes cause errors due to format conflicts (like with `docx` and `pdf` both configured).
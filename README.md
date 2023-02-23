# Quarto Templates

Tento projekt je implementace Profinitích šablon pro quarto. V Quarto dokumentech:

- Přidává logo,
- nastavuje barvy,
- a mnoho dalších věcí!


## Přidání do projektu

Instaluje se do adresáře, ve kterém se nachází soubor s příponou `.qmd`.

```bash
quarto add ./quarto-templates-master.zip
```

**TODO: Nahrat nekam, kde k tomu bude volne pristup bez nutnosti byt prihlasen v datascience gitlabu.**

## Použití

Šablona podporuje následující formáty: html, pdf a revealjs (html prezentace). Abychom je využili:

```bash
quarto render file.qmd --to profinit-html
```

K renderovani dokumentu slouzi prikaz (`template.qmd` nahradit samozrejme vlastnim souborem)

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

## Příklad

Šablona `template.qmd` slouží jako příklad, který lze spustit.

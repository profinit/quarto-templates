# Quarto Templates

Tento projekt je implementace Profinitích šablon pro Quarto.

## Prerekvizity

- Quarto.
- (Volitelné) Python: potřeba pouze v případě, že používám pro kódové bloky Pythonu.
- (Volitelné) R: potřeba pouze v případě, že používáme kódové bloky R.


## Pro uživatele

### Použití

Šablona podporuje následující formáty: html, pdf a revealjs (html prezentace).
Tyto formáty použijeme například následujícími příkazy generující soubor `template.qmd` do různých výstupních formátů.

#### Html

```bash
quarto render template.qmd --to profinit-html
```

#### Pdf

```bash
quarto render template.qmd --to profinit-pdf
```

#### Revealjs

```bash
quarto render template.qmd --to profinit-revealjs
```

## Pro vývojáře

```sh
git clone https://git.profinit.eu/DataScience/Sablony/quarto-templates
```
**Vytvoření tagu:**

záložka Repository &rarr; Tags &rarr; New tag

**Vytvoření release:**

záložka Deployments &rarr; Releases &rarr; New release

- Vyplníme tag name z předošlého bodu
- Vyplníme název release
- Vyplníme release notes (hlavní změny oproti předošlému release)

## FAQs

* **Obsah slidu v reveal js je moc dlouhý** 

    Existuje možnost {.scrollable}, kterou lze přidat do názvu sekce, napr. "## Tabulky {.scrollable}".
    Viz [další informace](https://quarto.org/docs/presentations/revealjs/index.html#content-overflow).
* **Chcem, aby tabulka měla dizajn profinitu**

    Stačí jí přidat styl corporate-table:

    ```md
    /* tabulka */
    : Tabulka {#tbl-id .corporate-table}
    ```

    ```md
    {python}
    #| class: corporate-table
    /* Kódóva buňka generující tabulku */
    ```
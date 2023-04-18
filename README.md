# Quarto Templates

Tento projekt je implementace Profinitích šablon pro Quarto.

## Prerekvizity

- Quarto.
- (Volitelné) Python: potřeba pouze v případě, že používám pro kódové bloky Pythonu.
- (Volitelné) R: potřeba pouze v případě, že používáme kódové bloky R.


## Pro uživatele

### Instalace

Nejprve provedeme instalaci šablon, abychom je v našem projektu mohli používat. Použijeme vhodnou verzi pro náš operační systém. Nový adresář `_extension` můžeme přidat do gitu v našem projektu.

#### Powershell (Win)

```powershell
cd /dir/where/quarto/render/is/run # usually dir with qmd files
wget https://nextcloud.profinit.eu/index.php/s/8R2gK8c8SMYkMrz/download/quarto-templates.zip -outfile "quarto-templates.zip"
quarto add ./quarto-templates.zip
rm quarto-templates.zip
```

#### Bash (Linux)

```sh
cd /dir/where/quarto/render/is/run # usually dir with qmd files
wget -O quarto-templates.zip https://nextcloud.profinit.eu/index.php/s/8R2gK8c8SMYkMrz/download/quarto-templates.zip
quarto add ./quarto-templates.zip
rm quarto-templates.zip
```

### Použití

Po instalaci již můžeme šablonu využívat. Šablona podporuje následující formáty: html, pdf a revealjs (html prezentace).
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
# Quarto Templates

Tento projekt je implementace Profinitích šablon pro Quarto.

Důležité odkazy:

- Interní repozitář Profinitu: https://git.profinit.eu/datascience/sablony/quarto-templates. Zde je projekt vyvíjen.
- Veřejný GitHub repozitář: https://github.com/profinit/quarto-templates. **Slouží pouze pro distribuci, ne pro vývoj!** Aktualizován per-release.
- Dokumentace: https://datascience.profinitservices.cz/sablony/quarto-templates/.

## Prerekvizity

- Quarto.
- (Volitelné) Python: potřeba pouze v případě, že používám pro kódové bloky Pythonu. Pokud nechceme používat defaultní instalaci, měli bychom mít aktivovaný náš Python.
- (Volitelné) R: potřeba pouze v případě, že používáme kódové bloky R.

### Python: Balíčky

V Pythonu chceme mít nainstalované následující balíčky:

- `jupyter`: nutné pro generování reportů.
- (Doporučené) `tabulate`: doporučené, pro lepší práci s tabulkami.

## Rychlé vyzkoušení

Následujícím postupem můžeme velmi rychle Profinití šablonu zkusit na předpřipraveném souboru.

```sh
quarto use template profinit/quarto-templates
```

Toto nainstaluje všechny potřebné soubory buď do současného adresáře nebo do zvoleného subadresáře. Dojde mimo jiné ke stažení `template.qmd`, na kterém si šablony můžeme jednoduše vyzkoušet. 

```sh
cd /path/to/dir/with/template/qmd
quarto render template.qmd --to profinit-html
```

## Instalace

Uvažujme, že máme nějaký soubor `template.qmd`, který pomocí Quarto chceme vyrenderovat. Nyní již můžeme chtít

Pak před instalací nejprve musíme jít do adresáře, kde tento soubor je.

```sh
cd /path/to/file/qmd/directory
```

Nyní do tohoto adresáře nainstalujeme Profinití Quarto šablony.

```bash
quarto add profinit/quarto-templates
```

Tento příkaz přidá složku `_extensions` do pracovního adresáře.

## Použití

Nyní jsme v adresáři s `template.qmd`. Při renderování musí být v adresáři, ze kterého spouštíme renderování, nainstalované Profinití Quarto šablony. Teď už použitím následujících příkazů.

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

### Všechny nakonfigurované formáty

Také lze použít Quarto pro vyrenderování všech nakonfigurovaných formátů v Quarto hlavičce:

```sh
quarto render template.qmd
```


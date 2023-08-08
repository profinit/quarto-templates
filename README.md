# Quarto Templates

Tento projekt je implementace Profinitích šablon pro Quarto.

- Dokumentace: http://vm-dtsc:31270/ (nutné být na vpn gr501).

## Prerekvizity

- Quarto.
- (Volitelné) Python: potřeba pouze v případě, že používám pro kódové bloky Pythonu. Pokud nechceme používat defaultní instalaci, měli bychom mít aktivovaný náš Python.
- (Volitelné) R: potřeba pouze v případě, že používáme kódové bloky R.

### Python: Balíčky

V Pythonu chceme mít nainstalované následující balíčky:

- `jupyter`: nutné pro generování reportů.
- (Doporučené) `tabulate`: doporučené, pro lepší práci s tabulkami.

## Instalace

Uvažujme, že máme nějaký soubor `file.qmd`, který pomocí Quarto chceme vyrenderovat.

Pak před instalací nejprve musíme jít do adresáře, kde tento soubor je.

### Linux

```sh
cd /path/to/file/qmd/directory
```

### Windows (Powershell)

```powershell
cd /path/to/file/qmd/directory
```

Nyní do tohoto adresáře nainstalujeme Profinití Quarto šablony.

```bash
quarto add profinit/quarto-templates
```

Tento příkaz přidá složku `_extensions` do pracovního adresáře.

## Použití

Nyní jsme v adresáři s `file.qmd`. Při renderování musí být v adresáři, ze kterého spouštíme renderování, nainstalované Profinití Quarto šablony. Teď už použitím následujících příkazů.

### Html

```bash
quarto render file.qmd --to profinit-html
```

### Pdf

```bash
quarto render file.qmd --to profinit-pdf
```

### Revealjs

```bash
quarto render file.qmd --to profinit-revealjs
```

### Všechny nakonfigurované formáty

Také lze použít Quarto pro vyrenderování všech nakonfigurovaných formátů v Quarto hlavičce:

```sh
quarto render file.qmd
```


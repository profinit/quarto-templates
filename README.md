# Profiniti sablona pro Quarto

Rozsireni pro quarto, ktere pridava logo a nastavuje profiniti barvy do quarto dokumentu.

## Instalace

Je potreba mit v adresari se souborem `\*.qmd` adresar `\_extensions`.

To lze bud rucne nebo po stazeni zip souboru s repozitarem (quarto-templates-master.zip) prikazem

`quarto install extension .\quarto-templates-master.zip`

*TODO*: Nahrat nekam, kde k tomu bude volne pristup bez nutnosti byt prihlasen v datascience gitlabu.

## Pouziti

K renderovani dokumentu slouzi prikaz (`template.qmd` nahradit samozrejme vlastnim souborem)

`quarto render template.qmd --to profinit-html`

pripadne `-- to profinit-pdf` nebo `--to profinit-revealjs`

Prikaz

`quarto render template.qmd`

(tedy bez specifikace formatu) vygeneruje vsechny formaty uvedene v `\*.qmd`, s tím, že pokud se formaty generuji do stejneho vystupniho formatu (profinit-html a profinit-revealjs se oba generuji do html), vzgeneruje se jen prvni z nich.

## Prikady pouziti

Sablona `template.qmd` je minimalisticka verze spustitelna verze sablony.

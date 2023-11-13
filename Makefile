SHELL := /bin/bash
PYTHON ?= python
R := R

init:
	sh scripts/init.sh

install_dev:
	${PYTHON} -m pip install -r "requirements.txt"
	${R} -e "install.packages(c('dplyr', 'ggplot2', 'rmarkdown'))"

compile:
	$(PYTHON) -m piptools compile --resolver=backtracking --no-emit-index-url -o requirements.txt requirements.in

sync:
	$(PYTHON) -m piptools sync requirements.txt

up: compile sync

.PHONE: init install_dev compile sync up
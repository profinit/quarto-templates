SHELL := /bin/bash
PYTHON := python
R := R

init:
	sh scripts/init.sh

install_dev:
	${PYTHON} -m pip install -r "requirements.txt"
	${R} -e "install.packages(c('dplyr', 'ggplot2', 'rmarkdown'))"

.PHONE: init install_dev
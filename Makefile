deploy_docs_vm:
	docker image build . -t "quarto_templates_docs" -f ".docker/docs.dockerfile"
	systemctl restart quarto_templates_docs

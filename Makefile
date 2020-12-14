CHARTS_BUILD_SCRIPT_VERSION := dev

default:
	@docker run --rm rancher/charts-build-scripts:${CHARTS_BUILD_SCRIPT_VERSION} charts-build-scripts --version
	@docker run --rm rancher/charts-build-scripts:${CHARTS_BUILD_SCRIPT_VERSION} charts-build-scripts

TARGETS := prepare patch charts clean sync validate

$(TARGETS): charts-build-scripts
	@echo charts-build-scripts $@
	@docker run -a stdin -a stdout -a stderr --rm -v ${PWD}:/repo rancher/charts-build-scripts:${CHARTS_BUILD_SCRIPT_VERSION} /bin/sh -c "cd repo; charts-build-scripts $@"

.DEFAULT_GOAL := default

.PHONY: $(TARGETS)
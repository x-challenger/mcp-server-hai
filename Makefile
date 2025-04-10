inspector:
	npx @modelcontextprotocol/inspector

build:
	uv run python -m build

release: build
	uv run twine upload dist/*
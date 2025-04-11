inspector:
	npx @modelcontextprotocol/inspector

clean:
	rm -rf ./dist/*

build: clean
	uv run python -m build

release: build
	uv run twine upload dist/*

install: build
	uv pip install --force-reinstall dist/*.whl


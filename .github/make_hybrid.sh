#!/bin/bash

mkdir -p esm cjs
mv index.js esm/index.js
sed -i 's#./index.js#./esm/index.js#' test.js
mv test.js test.mjs

PJSON=$(cat package.json | jq --tab '
	del(.type)
	| .description = .description + ". This is a fork of " + .repository + ", but with CommonJS support."
	| .repository = "esm2cjs/" + .name
	| .name |= "@esm2cjs/" + .
	| .author = { "name": "Dominic Griesel", "email": "d.griesel@gmx.net" }
	| .publishConfig = { "access": "public" }
	| .funding = "https://github.com/sponsors/AlCalzone"
	| .main = "cjs/index.js"
	| .module = "esm/index.js"
	| .exports = {}
	| .exports["."].import = "./esm/index.js"
	| .exports["."].require = "./cjs/index.js"
	| .exports["./package.json"] = "./package.json"
	| .scripts["to-cjs"] = "esm2cjs --in esm --out cjs -t node12"
	| .xo = {ignores: ["cjs"]}
')
echo "$PJSON" > package.json

npm i -D @alcalzone/esm2cjs
npm run to-cjs

PJSON=$(cat package.json | jq --tab 'del(.scripts["to-cjs"])')
echo "$PJSON" > package.json

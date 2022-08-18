# @esm2cjs/strip-final-newline

This is a fork of https://github.com/sindresorhus/strip-final-newline, but automatically patched to support ESM **and** CommonJS, unlike the original repository.

## Usage

Simply replace `strip-final-newline` in your code with `@esm2cjs/strip-final-newline`

```js
// Using ESM import syntax
import stripFinalNewline from '@esm2cjs/strip-final-newline';

// Using CommonJS require()
const stripFinalNewline = require('@esm2cjs/strip-final-newline').default;
```

Or define an npm alias:
```
npm i strip-final-newline@npm:@esm2cjs/strip-final-newline
```

```jsonc
// package.json
"dependencies": {
    "strip-final-newline": "npm:@esm2cjs/strip-final-newline@^3.0.0"
}
```

> **Note:**
> Because the original module uses `export default`, you need to append `.default` to the `require()` call.

For more details, please see the original [repository](https://github.com/sindresorhus/strip-final-newline).

## Sponsoring

To support my efforts in maintaining the ESM/CommonJS hybrid, please sponsor [here](https://github.com/sponsors/AlCalzone).

To support the original author of the module, please sponsor [here](https://github.com/sindresorhus/strip-final-newline).

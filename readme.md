# @esm2cjs/strip-final-newline

This is a fork of https://github.com/sindresorhus/strip-final-newline, but automatically patched to support ESM **and** CommonJS, unlike the original repository.

## Usage

```js
// Using ESM import syntax
import stripFinalNewline from 'strip-final-newline';

// Using CommonJS require()
const stripFinalNewline = require('strip-final-newline').default;
```

> **Note:**
> Because the original module uses `export default`, you need to append `.default` to the `require()` call.

For more details, please see the original [repository](https://github.com/sindresorhus/strip-final-newline).

## Sponsoring

To support my efforts in maintaining the ESM/CommonJS hybrid, please sponsor [here](https://github.com/sponsors/AlCalzone).

To support the original author of the module, please sponsor [here](https://github.com/sindresorhus/strip-final-newline).

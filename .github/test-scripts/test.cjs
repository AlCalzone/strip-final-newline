const stripFinalNewline = require("@esm2cjs/strip-final-newline").default;
const assert = require("assert");

assert(stripFinalNewline("foo\n") === "foo");

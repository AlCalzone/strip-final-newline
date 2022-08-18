import stripFinalNewline from "@esm2cjs/strip-final-newline";
import assert from "assert";

assert(stripFinalNewline("foo\n") === "foo");

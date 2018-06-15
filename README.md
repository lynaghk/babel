# Small JSX compiler

This repo is my attempt at creating a reasonably small JSX compiler.

The [upstream version of babel-standalone](https://github.com/babel/babel/tree/master/packages/babel-standalone)'s "minified" build clocks in at

```
curl https://unpkg.com/@babel/standalone@7.0.0-beta.51/babel.min.js | wc -c
# 1965073 bytes
```

nearly 2MB, and also does some DOM walking to process `<script>` tags.

I don't want any of that, I just want a pure function that converts a string of javascript with JSX to a string of javascript with `React.createElement` calls.
(For use in the Sketch.systems playground; see [forum thread](https://talk.sketch.systems/t/jsx-support-in-the-code-section/42) for context.)


So, I removed all the babel plugins except `@babel/plugin-transform-react-jsx` and got rid of the DOM walking bits.

Run `compile.sh` to build `/packages/babel-standalone/babel.min.js`.
Best I've gotten it down to is 969kB.

Please open an issue or pull request if this can be improved.
(Or point me to another project that already does this!)

Thanks

--Kevin

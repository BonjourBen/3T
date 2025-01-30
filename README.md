## Install dependencies
```sh
# Essential
npm i

# Dev helper
npm i chokidar-cli -g
```

## Recommanded TS config
```json
{
    "compilerOptions": {
        "outDir": "dist"
    },
    "files": [
        "src/app.ts"
    ]
}
```

## shortcut
```sh
# Compile
npm run compile

# Minify
npm run minify

# Watch on change (compile + save)
# need: chokidar
npm run watch
```
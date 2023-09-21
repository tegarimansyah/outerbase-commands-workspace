# Outerbase Commands Workspace

Create and manage [Outerbase](https://outerbase.com/) [command](https://docs.outerbase.com/docs/commands/intro-to-commands) easily. With Outerbase command, you can easily create an endpoint and connect to your outerbase database. A single command can have one or more commands. You can use Javascript, Python and SQL for a node. 

This repo will help you build multiple commands and multiple Javascript nodes, all in one place (monorepo). You can also spliting js files and import 3rd party dependency, then copy-paste the build result to the outerbase command dashboard.

## Getting Started

Use this repo as a template and then clone your repo. 

This is a [pnpm workspace](https://pnpm.io/workspaces). For create a new node, run this command.

```bash
pnpm run new COMMAND_NAME NODE_NAME
```

`NODE_NAME` is optional. If empty, then it will create `node-1`. 

You can develop your app in `commands/COMMAND_NAME-NODE_NAME/src/index.js`. You can install some dependencies or create other files and import from `index.js`. After that you can:

```bash
pnpm --filter "COMMAND_NAME-*" run build # build into a single file
pnpm --filter "COMMAND_NAME-*" run build-minify # build into a single file and minify (but preserve "UserCode" function name)
pnpm --filter "COMMAND_NAME-*" run build-minify-outerbase # build into a single file and minify and remove quote for {{request.*}} and {{node-*}}
```

---

For more information, please refer to this article and video demo.
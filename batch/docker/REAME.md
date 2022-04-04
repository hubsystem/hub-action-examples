HUB Action as Docker container
==============================

HUB can execute batch actions with docker container.

Which open up to multiple possibilities in tools, programming languages and environments.

- Define your action details like name, version, metric query and schedule in `hub-action.json`.
- Set up environment in `Dockerfile` _(if need access to private images repos, contact support)_.
- Container will get `/in` mounted where result from metric query will be.
- Container will get `/out` mounted where output can be places, all `*.jsonl` files that exists in `/out` will be processed by HUB after execution.
- Output logs will be capture and stored with HUB Action execution, time to live for logs is based on HUB instance setup.



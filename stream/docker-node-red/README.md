HUB Stream Action as Node-RED container
==============================================

Full example of Node-RED container doing stream processing with HUB Action Stream MQTT.

## Run

```sh
./test-action.sh
```

You can then browse `http://localhost:1880` to access Node-RED Desktop.

Send test metrics as MQTT event using HUB `csv-to-mqtt` util

```sh
csv-to-mqtt events.csv
```

## How to use

- Define your action details like name, version, metric query/subscribers in `hub-action.json`.
- Set up environment in `Dockerfile` _(if need access to private images repos, contact support)_.
- Container will get `/in` mounted where result from metric query with file output will be.
- Container will get `/out` mounted where file output can be places, all `*.jsonl` files that exists in `/out` will be processed by HUB once file-lock is released.
- Output logs will be capture and stored with HUB Action execution, time to live for logs is based on HUB instance setup.
- Package `Dockerfile`, `hub-action.json` and additional files needed by container build process in a zip file, send/deploy to HUB _(or setup shared Git repo)_.

## Shared Git repository with CI tasks

Please contact HUB Support for more details on setup of automatic deployment using shared Git repository and Continue
Integrations etc.



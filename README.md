# Kalix CLI for GitHub Actions

## *This action has been superseded by the [setup-kalix-action](https://github.com/lightbend/setup-kalix-action) which installs the Kalix CLI for use in the GitHub workflow.*

**This action will not see further updates.**

This action provides a wrapper for the [Kalix CLI](https://docs.kalix.io/kalix/index.html). The action executes whatever commands you specify, and requires you've created an [authentication token](https://docs.kalix.io/operations/integrate-cicd-github-actions.html) first.

## Usage

The action takes two required variables to authenticate and set the project you want to work on correctly:

* `token`: The Kalix authentication token
* `project`: The project ID for the Kalix project you're using

## Example Workflow

The below flow shows how to use this action to list all services in your project

```yaml
name: kalix

on: 
  push:
    branches: [ main ]

jobs:
    build:
        runs-on: ubuntu-latest
        steps:
            - name: List Services
              uses: lightbend/kalix-action@v7
              with:
                cmd: "services list"
              env:
                token: ${{ secrets.TOKEN }}
                project: ${{ secrets.PROJECT }}
```

## Contributing

We welcome all contributions! [Pull requests](https://github.com/lightbend/kalix-action/pulls) are the preferred way to share your contributions. For major changes, please open [an issue](https://github.com/lightbend/kalix-action/issues) first to discuss what you would like to change.

## Support

This project is an [end-of-life](https://doc.akka.io/docs/akka-dependencies/current/support-terminology.html#end-of-life-eol-)

## License

See the [LICENSE](./LICENSE)

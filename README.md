# Kalix CLI for GitHub Actions

This action provides a wrapper for the [Kalix CLI](https://docs.kalix.io/kalix/index.html). The action executes whatever commands you specify, and requires you've created an [authentication token](https://docs.kalix.io/projects/integrate-cicd-github-actions.html) first.

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

This project is an [incubator](https://developer.lightbend.com/docs/introduction/getting-help/support-terminology.html)

## License

See the [LICENSE](./LICENSE)

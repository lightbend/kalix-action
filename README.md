# Akka Serverless CLI for GitHub Actions

This action provides a wrapper for the [Akka Serverless CLI](https://developer.lightbend.com/docs/akka-serverless/getting-started/set-up-development-env.html). The action executes whatever commands you specify, and requires you've created an [authentication token](https://developer.lightbend.com/docs/akka-serverless/deploying/integrate-cicd.html) first.

## Usage

The action takes two required variables to authenticate and set the project you want to work on correctly:

* `token`: The Akka Serverless authentication token
* `project`: The project ID for the Akka Serverless project you're using

## Example Workflow

The below flow shows how to use this action to list all services in your project

```yaml
name: akkasls

on: 
  push:
    branches: [ main ]

jobs:
    build:
        runs-on: ubuntu-latest
        steps:
            - name: List Services
              uses: retgits/akkasls-action@v1
              with:
                cmd: "services list"
              env:
                token: ${{ secrets.TOKEN }}
                project: ${{ secrets.PROJECT }}
```

## Contributing

We welcome all contributions! [Pull requests](https://github.com/lightbend-labs/akkasls-action/pulls) are the preferred way to share your contributions. For major changes, please open [an issue](https://github.com/lightbend-labs/akkasls-action/issues) first to discuss what you would like to change.

## Support

This project is an [incubator](https://developer.lightbend.com/docs/introduction/getting-help/support-terminology.html)

## License

See the [LICENSE](./LICENSE)

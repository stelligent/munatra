# Munatra

Example [sinatra](http://www.sinatrarb.com) implementation of [mu](https://github.com/stelligent/mu), complete with unit testing and CasperJS end-to-end tests. In one command, provision AWS resources for a containerized deployment of an example Sinatra app.

## Installation

To give AWS CodePipeline access to a private GitHub repository, you will need to generate a [Personal Access Token](https://github.com/settings/tokens/new) with the `repo` scope selected. You will need to supply this when initializing the pipeline.

The only requirements for deploy is a properly configured [AWS CLI](https://aws.amazon.com/cli/) environment and a [mu](https://github.com/stelligent/mu) setup:

`curl -s https://getmu.io/install.sh | sh`

## Usage

### Demo
![Demo Video](https://s3.amazonaws.com/munatra-images/MunatraSmall.gif)

### Setup
To deploy on an AWS account, simply run: 
```bash
mu pipeline up -t [GitHub Personal Access Token]
```

Afterwards, navigate to the Pipeline URL found in the output of `mu service show munatra` to see the build stages of the application. 

Development environment endpoint URLs can be found as "Base URL" by running: 
```bash
mu environment show munatradev
```

After a deployment approval is given within AWS CodePipeline and the deploy finishes, the production endpoint URL can be found, similarly as "Base URL", by running: 
```bash
mu environment show munatraprod
```

To list all mu environments within your AWS account, just run: 
```bash
mu environment list
```

### Cleanup

When you're done working with munatra, simply terminate each environment by running: `mu environment terminate [environment_name]`. For example, to terminate the AWS resources for the 'munatradev' environment, simply run: 
```bash
mu environment terminate munatradev
```

To terminate the AWS resources for the CI/CD pipeline, simply run `mu pipeline terminate [service_name]`. In the case of munatra, this would simply be: 
```bash
mu pipeline terminate munatra
```

Note: By default, mu leaves behind two Cloudformation stacks for the ECR repository and an S3 bucket for mu. As of this time, they require manual deletion. 

### Customization

For further options for deploying with mu, refer to the [mu documentation](https://github.com/stelligent/mu/wiki) and [examples](https://github.com/stelligent/mu/tree/develop/examples).

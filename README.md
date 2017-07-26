# Munatra

Example [sinatra](http://www.sinatrarb.com) implementation of [mu](https://github.com/stelligent/mu), complete with unit testing and CasperJS end-to-end tests. In one command, provision AWS resources for a containerized deployment of an example Sinatra app.

## Installation

The only requirements for deploy is a properly configured [AWS CLI](https://aws.amazon.com/cli/) environment and a [mu](https://github.com/stelligent/mu) setup:

`curl -s https://getmu.io/install.sh | sh`

## Usage

To deploy on an AWS account, simply run `mu pipeline up`. 

Afterwards, navigate to the Pipeline URL found in the output of `mu service show munatra` to see the build stages of the application. Development environment endpoint URLs can be found as "Base URL" by running `mu environment show munatradev`. After a deployment approval is given within AWS CodePipeline and the deploy finishes, the production endpoint URL can be found, similarly as "Base URL", by running `mu environment show munatraprod`. 

For further infrastructure management options, refer to the [mu documentation](https://github.com/stelligent/mu/wiki).

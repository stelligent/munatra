# Munatra

Example [sinatra](http://www.sinatrarb.com) implementation of [mu](https://github.com/stelligent/mu), complete with unit testing and CasperJS end-to-end tests. In one command, provision AWS resources for a containerized deployment of an example Sinatra app.

## Installation

To give AWS CodePipeline access to a private GitHub repository, you will need to generate a [Personal Access Token](https://github.com/settings/tokens/new) with the `repo` scope selected. You will need to supply this when initializing the pipeline.

The only requirement to deploy is a properly configured [mu](https://github.com/stelligent/mu) setup:

`curl -s https://getmu.io/install.sh | sh`

## Usage

To deploy on an AWS account, simply run `mu pipeline up -t [GitHub Personal Access Token]`. 

Afterwards, navigate to the Pipeline URL found in the output of `mu service show munatra` to see the build stages of the application. Development environment endpoint URLs can be found by running `mu environment show munatradev`. After a deployment approval is given within AWS CodePipeline and the deploy finishes, the production endpoint URL can be found by running `mu environment show munatraprod`. 

For further infrastructure management options, refer to the [mu documentation](https://github.com/stelligent/mu/wiki).

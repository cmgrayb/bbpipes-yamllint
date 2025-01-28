# Bitbucket Pipe - YAMLLint

![Docker](https://github.com/cmgrayb/bbpipes-yamllint/actions/workflows/docker-publish.yml/badge.svg)
![Snyk Container](https://github.com/cmgrayb/bbpipes-yamllint/actions/workflows/snyk-codesecurity.yml/badge.svg)
![YAMLLint](https://github.com/cmgrayb/bbpipes-yamllint/actions/workflows/yamllint.yml/badge.svg)

Based on the container image [cmgrayb/yamllint](https://github.com/cmgrayb/yamllint), this pipe lints YAML files in the repository

## Usage

In order to run the YAMLLint pipe, it must be added to a repository's `bitbucket-pipelines.yml` file.  The below snippet runs the pipe on all YAML files in the repository on each commit.

```yaml

pipelines:
  default:
    - step: &yamllint
        name: YAML Lint
        script:
          - pipe: docker://ghcr.io/cmgrayb/bbpipes-yamllint
```

## Passing Arguments

The pipe passes all arguments to yamllint as received.  For example, to lint only the `bitbucket-pipelines.yml` file, use the following snippet:

```yaml

pipelines:
  default:
    - step: &yamllint
        name: YAML Lint
        script:
          - pipe: docker://ghcr.io/cmgrayb/bbpipes-yamllint bitbucket-pipelines.yml
```

Any additional arguments can be passed in the same way.

```yaml
pipelines:
  default:
    - step: &yamllint
        name: YAML Lint
        script:
          - pipe: docker://ghcr.io/cmgrayb/bbpipes-yamllint [file or directory] --config-file [config file] --format [format] --strict --no-warnings
```

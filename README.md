# Perl::Critic GitHub Action

## What it does

Runs Perl::Critic using Docker and outputs annotations. You can tweak what to
criticize in your .perltidyrc.

## Example usage

### GitHub Actions

In your workflow file:

```yaml
on: [push]

jobs:
  critic:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Run Perl::Critic
      uses: natanlao/perl-critic-action@v1.1
      with:
        files: critic
```

### Locally

If you wanted to, you could run the image that backs this Action locally:

```console
$ docker run -v $PWD:/tmp/workspace ghcr.io/natanlao/critic:latest
```

Files and directories can be specified as arguments. No arguments implies the
current directory.

## Options

### input.files

Space-separated list of files to examine. If not provided, defaults to all Perl
files in the current directory.

## Acknowledgements

Forked from
[JaSei/docker-perl\_critic](https://github.com/JaSei/docker-perl_critic).


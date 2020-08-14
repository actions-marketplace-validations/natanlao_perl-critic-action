# Perl::Critic GitHub Action

## What it does

Runs Perl::Critic using Docker and outputs annotations. You can tweak what to
criticize in your .perltidyrc.

## Example usage

```yaml
on: [push]

jobs:
  critic:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Run Perl::Critic
      uses: natanlao/perl-critic-action@v1
      with:
        files: critic
```

## Options

### input.files

Space-separated list of files to examine. If not provided, defaults to all Perl
files in the current directory.

## Acknowledgements

Forked from
[JaSei/docker-perl\_critic](https://github.com/JaSei/docker-perl_critic).


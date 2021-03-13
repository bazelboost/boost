# Modular Boost built with Bazel

WORK IN PROGRESS - This is experimental and may not work correctly. Contributions are welcome!

## Goal

## Installation

```python
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "boost",
    branch = "master",
    remote = "git@github.com:bazelboost/boost.git",
)

load("@boost//:index.bzl", "boost_git_repositories")
boost_git_repositories(branch = "develop")
```

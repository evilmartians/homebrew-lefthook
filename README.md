# homebrew-lefthook

Homebrew Formulae for lefthook git hooks manager

# How to publish new version in Homebrew

Just create a PR with updated url and sha:

```
  url "https://github.com/evilmartians/lefthook/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "a662015ba6ed42dda83b634995363d1d68ac6e4c2c5e1a9582735380cef32524"
```

Wait until the pull request’s checks become green. Then label pull request with the `pr-pull` label. A new brew pr-pull workflow will be fired up and after a couple of minutes you should observe the PR closed, bottles uploaded and commits pushed to the main branch of your repository.

Source: https://brew.sh/2020/11/18/homebrew-tap-with-bottles-uploaded-to-github-releases/

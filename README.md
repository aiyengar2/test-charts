# Live Branch

This branch contains Helm charts that are released or ready to be released. Most of the commits to this branch should be cherry-picked from dev-v2.5, which picks up the generated changes from dev-v2.5-source.

To release a new version of a chart, please open the relevant PRs to dev-v2.5-source. Once the changes are merged, they will automatically update the dev-v2.5 branch, which can then be pulled into this branch after the changes are tested right before a release.
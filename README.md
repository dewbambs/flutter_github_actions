# flutter_github_actions

Flutter github actions used by CIDROY Technologies LLP. This shows how to use
github actions for monorepo projects in flutter.

## Actions Performed
event: pull request on beta branch

1. Setup flutter environment.
2. Install dependencies for the project.
3. Check formatting of the project.
4. Run tests for the project.
5. Check code coverage for the project.

event: push to beta branch
1. Setup flutter environment.
2. Install dependencies for the project.
3. Create a release for the project.
4. Upload the release to firebase app distribution using fastlane.


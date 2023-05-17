This repository intends to answer this Question for Go:

> for Drivers that are included in our products, if the dependencies for those Drivers are pulled by the respective product teams and if those dependencies are vulnerable, can those product teams update those dependencies themselves to a fixed-version or do they have to depend on Drivers team to that?

This is expected to be possible for Go by using the `replace` directive in the `go.mod` file of the application using the driver.

There are three repositories:
- `app` a sample application.
- `library` a sample library dependency. It includes a `GetDependencyVersion` function to return a string version of `dependency` at runtime.
- `dependency` a sample dependency of `library`. It includes a `GetVersion` function to return a string version at runtime.

These are the dependencies:
- `library v1.0.1` requires `dependency v1.0.1`.
- `app` requires `library v1.0.1`.

The `go.mod` file in `app` includes: `replace github.com/kevinAlbs/dependency v1.0.1 => github.com/kevinAlbs/dependency v1.1.0`
Calling `GetDependencyVersion` from `app` returns `1.1.0`.

Answer: Yes.

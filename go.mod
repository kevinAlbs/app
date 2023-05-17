module github.com/kevinAlbs/app

go 1.17

replace github.com/kevinAlbs/dependency v1.0.1 => github.com/kevinAlbs/dependency v1.1.0

require github.com/kevinAlbs/library v1.0.1

require github.com/kevinAlbs/dependency v1.0.1 // indirect

// Q: Why is `dependency` listed as an `indirect` dependency?
// A:
// Q: Why does `dependency` get selected at v1.0.1, though the go.mod file in `library v1.0.0` requires `dependency v1.0.0`?
// A:

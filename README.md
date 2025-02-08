# optuna-julia-example

Zenn記事「[PythonCall.jlでJuliaからOptunaを使う](https://zenn.dev/ultimatile/articles/pythoncall-julia-optuna)」のサンプルコードです。
記事で紹介した方法を用いてJuliaからOptunaを使うことができます。

## 準備

以下のように当リポジトリをクローンして、その中に移動してください。

```shell-session
git clone https://github.com/ultimatile/optuna-julia-example.git
cd optuna-julia-example
```

## 実行方法

uvを使用したPython版、uvを使用したJulia版、uvを使用しないJulia版の3つの方法があります。
uvを使用する場合はインストールが必要です。

### Python版

```shell-session
uv run optuna-example.py
```

GNU Makeが使用できる場合は以下のように実行することもできます。

```shell-session
make run-py
```

### Julia版 (uvを使用)

```shell-session
env JULIA_CONDAPKG_BACKEND="Null" uv run julia --project optuna-example.jl
```

GNU Makeが使用できる場合は以下のように実行することもできます。

```shell-session
make run-jl
```

### Julia版 (uvを使用しない)

```shell-session
uv run julia --project optuna-example.jl
```

GNU Makeが使用できる場合は以下のように実行することもできます。

```shell-session
make run-jl-conda
```

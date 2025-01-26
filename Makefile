.PHONY: run-jl-uv run-jl-conda run-py

run-py:
	uv run python optuna-example.py

run-jl-uv:
		env JULIA_CONDAPKG_BACKEND="Null" uv run julia --project optuna-example.jl

run-jl-conda:
		julia --project optuna-example.jl


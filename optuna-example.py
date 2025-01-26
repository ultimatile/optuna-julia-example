"""
Himmelblau Function Optimization by python
original author: Atsushi Sakai
"""

import optuna


def himmelblau(x, y):
    """
    Himmelblau's function
    see Himmelblau's function - Wikipedia, the free encyclopedia
    http://en.wikipedia.org/wiki/Himmelblau%27s_function
    """
    return (x**2 + y - 11) ** 2 + (x + y**2 - 7) ** 2


def objective(trial):
    x = trial.suggest_float("x", -5, 5)
    y = trial.suggest_float("y", -5, 5)
    return himmelblau(x, y)


def main():
    study = optuna.create_study()
    study.optimize(objective, n_trials=1000)
    print(f"min: {study.best_value} at {study.best_params}")


if __name__ == "__main__":
    main()

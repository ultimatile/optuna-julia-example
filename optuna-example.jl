# 実行時に環境変数を設定しない場合は以下のコメントアウトを外す
# ENV["JULIA_CONDAPKG_BACKEND"] = "Null"

using PythonCall: pyimport

function himmelblau(x, y)
  return (x^2 + y - 11)^2 + (x + y^2 - 7)^2
end

function objective(trial)
  x = trial.suggest_float("x", -5, 5)
  y = trial.suggest_float("y", -5, 5)
  return himmelblau(x, y)
end

function main()
  optuna = pyimport("optuna")
  study = optuna.create_study()
  study.optimize(objective, n_trials=1000)
  println("min: $(study.best_value) at $(study.best_params)")
end
main()

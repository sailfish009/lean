inductive func (A B : Type) :=
mk : (A → B) → func A B

section
  parameters {A B : Type}
  definition to_function (F : func A B) : A → B :=
  func.rec (λf, f) F
  coercion to_function
end

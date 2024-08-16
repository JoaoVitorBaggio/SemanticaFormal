(*-------- TESTES DE ACERTOS --------*)


int_bse (Fn ("x", TyInt, Binop (Sum, Num 10, Var "x")))  (* retorno => fn: int --> int *)

let _ = int_bse (Fn ("x", TyInt, Binop (Lt, Var "x", Num 1)))  (* retorno => int --> bool *)    

let _ = int_bse (Fn("x", TyInt, Fn("y", TyInt, Binop(Sum, Var "x", Var "y")))) (*(fn x:int => (fn y:int => x+y))*)  (* retorno => (int --> (int --> int))*)


(*-------- TESTES DE ERROS --------*)
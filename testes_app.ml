(*-------- TESTES DE ACERTOS --------*)

int_bse (App (Fn ("x", TyInt, Binop (Sum, Var "x", Num 1)), Num 5))  (* retorno => 6 : int *)

int_bse (App(Fn("x", TyInt, App(Fn("y", TyInt, Binop(Sum, Var "x", Var "y")), Num 12)), Num 4)) (*(fn x:int => (fn y:int => x+y)) 12 4 *) (* retorno => 16 : int *)


(*-------- TESTES DE ERROS --------*)


int_bse (App (Bool false, Bool true)) (* retorno => erro de tipo - tipo função era esperado *)

int_bse (App (Fn ("x", TyInt, Binop (Lt, Var "x", Num 1)), Bool true)) (* retorno => erro de tipo - tipo argumento errado *)

int_bse (App(Fn("x", TyInt, App(Fn("y", TyInt, Binop(Sum, Var "x", Var "y")), Bool true)), Num 4)) (*(fn x:bool => (fn y:int => x+y)) true 4 *) (* retorno => erro de tipo - tipo argumento errado*)
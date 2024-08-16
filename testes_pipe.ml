(*-------- TESTES DE ACERTOS --------*)


int_bse (Pipe (Num 1, Fn ("x", TyInt, Binop (Sum, Var "x", Num 1))))  (* retorno => 2 : int *)

int_bse (Pipe (Num 2, Fn ("x", TyInt, Binop (Mult, Var "x", Num 2))))  (* retorno => 4 : int *)


(*-------- TESTES DE ERROS --------*)


int_bse (Pipe (Num 2, Binop (Mult, Num 3, Num 2)))  (* retorno => erro de tipo - tipo função era esperado *)

int_bse (Pipe (Bool false, Fn ("x", TyInt, Binop (Sum, Var "x", Num 1))))  (* retorno => erro de tipo - tipo argumento errado *)

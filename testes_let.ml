(*-------- TESTES DE ACERTOS --------*)

int_bse (Let ("x", TyInt, Num 10, Binop (Sum, Var "x", Num 20))) (* retorno => 30 : int *)



(*-------- TESTES DE ERROS --------*)


int_bse (Let ("x", TyInt, Bool true, Binop (Sum, Var "x", Num 20))) (* retorno => erro de tipo - expressão não é do tipo declarado em Let *)
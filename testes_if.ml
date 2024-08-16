(*-------- TESTES DE ACERTOS --------*)


int_bse (If (Bool true, Num 10, Num 5))  (* retorno => 10 : int *)

int_bse (If (Bool false, Num 10, Num 20))  (* retorno => 20 : int *)


(*-------- TESTES DE ERROS --------*)


int_bse (If (Num 0, Num 10, Num 20))  (* retorno => erro de tipo - condição de IF não é do tipo bool *)

int_bse (If (Bool true, Bool false, Num 20))  (* retorno => erro de tipo - then/else com tipos diferentes *)
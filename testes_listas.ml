(*-------- TESTES DE ACERTOS --------*)


int_bse (Cons (Num 1, Nil TyInt))  (* retorno => 1 :: nil : list int *)

int_bse (Cons (Num 1, Cons (Num 2, Nil TyInt)))  (* retorno => 1 :: 2 :: nil : list int *)


(*-------- TESTES DE ERROS --------*)


int_bse (Cons (Num 1, Cons (Bool true, Nil TyBool)))  (* retorno => erro de tipo - tipo do segundo argumento de cons deve ser lista do tipo do tipo do primeiro argumento *)
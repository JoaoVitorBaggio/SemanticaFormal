(*-------- TESTES DE ACERTOS --------*)


int_bse (Nothing TyInt)  (* retorno => nothing : maybe int *)

int_bse (Just (Num 10))  (* retorno => just 10 : maybe int *)

int_bse (Nil TyInt)  (* retorno => nil : list int *)


(*-------- TESTES DE ERROS --------*)



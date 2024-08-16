(*-------- TESTES DE ACERTOS --------*)

int_bse (MatchWithNothing (Nothing TyInt, Num 0, "x", Var "x"))  (* retorno => 0 : int *)

int_bse (MatchWithNothing (Just (Num 5), Num 0, "x", Binop (Sum, Var "x", Num 1)))  (* retorno => 6 : int *)

int_bse (MatchWithNil (Nil TyInt, Num 0, "x", "xs", Var "x"))  (* retorno => 0 : int *)

int_bse (MatchWithNil (Cons (Num 1, Nil TyInt), Num 0, "x", "xs", Binop (Sum, Var "x", Num 1)))  (* retorno => 2 : int *)


(*-------- TESTES DE ERROS --------*)


int_bse (MatchWithNothing (Num 1, Num 0, "x", Var "x"))  (* retorno => erro de tipo - tipo maybe esperado em match *)

int_bse (MatchWithNothing (Nothing TyInt, Num 0, "x", Bool false))  (* retorno => erro de tipo - match com tipos distintos *)

int_bse (MatchWithNil (Nothing TyInt, Num 0, "x", "xs", Var "x"))  (* retorno => erro de tipo - MatchWithNil espera que o primeiro argumento seja uma lista. *)

int_bse (MatchWithNil (Cons (Num 1, Nil TyInt), Num 0, "x", "xs", Bool true))  (* retorno => erro de tipo - MatchWithNil espera duas expressões de mesmo tipo *)

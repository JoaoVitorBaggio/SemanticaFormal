(*-------- TESTES DE ACERTOS --------*)


int_bse (Num 10)  (* retorno => 10 : int *)

int_bse (Bool true) (* retorno => true : bool *)

int_bse (Bool false) (* retorno => false : bool *)

int_bse (Binop (Eq, Num  10, Num 1)) (* retorno => false : bool *)

int_bse (Binop (Lt, Num  10, Num 1)) (* retorno => false : bool *)

int_bse (Binop (Gt, Num  10, Num 1)) (* retorno => true : bool *)

int_bse (Binop (Sum, Num 10, Num 5)) (* retorno => 15 : int *)

int_bse (Binop (Sub, Num 10, Num 5)) (* retorno => 5 : int *) 

int_bse (Binop (Mult, Num 10, Num 5)) (* retorno => 50 : int *)

int_bse (Fst (Pair (Num 10, Num 5))) (* retorno => 10 : int *)

int_bse (Fst (Pair (Bool true, Bool false))) (* retorno => true : bool *)

int_bse (Snd (Pair (Num 10, Num 5))) (* retorno => 5: int *)

int_bse (Snd (Pair (Bool true, Bool false))) (* retorno => false : bool *)


(*-------- TESTES DE ERROS --------*)


int_bse (Var "y") (* retorno => erro de tipo - variavel nao declarada:y *)

int_bse (Fst (Num 10))  (* retorno => erro de tipo - fst espera tipo par *) 

int_bse (Snd (Num 10))  (* retorno => erro de tipo - snd espera tipo par *)

int_bse (Binop (Eq, Bool true, Num 5))  (* Esperado: erro de tipo - operando nao é do tipo int *)
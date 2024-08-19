(*-------- TESTES DE ACERTOS --------*)


int_bse (Pipe (Num 1, Fn ("x", TyInt, Binop (Sum, Var "x", Num 1))))  (* retorno => 2 : int *)

int_bse (Pipe (Num 2, Fn ("x", TyInt, Binop (Mult, Var "x", Num 2))))  (* retorno => 4 : int *)


(*-------- TESTES DE ERROS --------*)


int_bse (Pipe (Num 2, Binop (Mult, Num 3, Num 2)))  (* retorno => erro de tipo - tipo função era esperado *)

int_bse (Pipe (Bool false, Fn ("x", TyInt, Binop (Sum, Var "x", Num 1))))  (* retorno => erro de tipo - tipo argumento errado *)


let teste_pipe= 
  Let ("incr", TyFn (TyInt, TyInt), 
       Fn ("x", TyInt, Binop (Sum, Var "x", Num 1)),
       Let ("dobro", TyFn (TyInt, TyInt), 
            Fn ("x", TyInt, Binop (Mult, Num 2, Var "x")),
            Let ("triplo", TyFn (TyInt, TyInt), 
                 Fn ("x", TyInt, Binop (Mult, Num 3, Var "x")),
                 Pipe (Pipe (Pipe (Num 5, Var "dobro"), Var "triplo"), Var "incr"))))
let _ = int_bse(teste_pipe)

(*-------- TESTES DE ACERTOS --------*)


int_bse (
  LetRec ("fact", TyFn (TyInt, TyInt),
    Fn ("n", TyInt,
      If (Binop (Eq, Var "n", Num 0), 
        Num 1, 
        Binop (Mult, Var "n", App (Var "fact", Binop (Sub, Var "n", Num 1))))),
    App (Var "fact", Num 5)
  )
)  (* retorno => 120 : int *)


int_bse (
  LetRec ("e_par", TyFn (TyInt, TyBool),
    Fn ("n", TyInt,
      If (Binop (Eq, Var "n", Num 0), 
          Bool true,
          If (Binop (Eq, Var "n", Num 1), 
            Bool false,
            App (Var "e_par", Binop (Sub, Var "n", Num 2))))),
    App (Var "e_par", Num 4)
  )
) (* retorno => true : bool *)


let listMaxExpr = 
  LetRec(
    "list_max",
    TyFn(TyList (TyInt), TyMaybe(TyInt)),
    Fn("l", TyList(TyInt),
       MatchWithNil(Var "l", Nothing(TyInt), "h", "t",
                    MatchWithNothing(App(Var "list_max", Var "t"),
                                     Just(Var "h"),
                                     "m",
                                     Just(
                                       If (Binop (Geq, Var "h", Var "m"),
                                           Var "h",
                                           Var "m"))))),
    Let
      ("base_dados",
       TyList(TyInt),
       Cons(Num 10,
            Cons(Num 50,
                 Cons(Num 30,
                      Cons(Num 40,
                           Cons(Num 50, Nil(TyInt)))))),
       MatchWithNothing(
         App(Var "list_max", Var "base_dados"),
         Num 0,
         "n",
         Var "n"
       )
      )
  ) (*retorno => maior número: 50*)

(* Executa o teste *)
let _ = int_bse(listMaxExpr)


(*-------- TESTES DE ERROS --------*)


int_bse (
  LetRec ("fact", TyFn (TyInt, TyInt),
    Fn ("n", TyInt,
      If (Binop (Eq, Var "n", Num 0), 
        Bool true, 
        Bool false)),
    App (Var "fact", Num 5)
  )
) (* retorno => erro de tipo - tipo da função recursiva é diferente do declarado *) 
let lookupExpr = 
  LetRec
    ("lookup",
     TyFn(TyInt, TyFn(TyList(TyPair(TyInt,TyInt)), TyMaybe(TyInt))),
     Fn("k", TyInt,
        Fn("l", TyList(TyPair(TyInt, TyInt)),
           MatchWithNil(Var "l", Nothing(TyInt), "x", "xs",
                        If (Binop (Eq, Fst(Var "x"), Var "k"),
                            Just (Snd (Var "x")),
                            App(App(Var "lookup", Var "k"), Var "xs"))))),
     Let
       ("base_dados",
        TyList(TyPair(TyInt, TyInt)),
        Cons(Pair(Num 1, Num 10),
             Cons(Pair(Num 2, Num 20),
                  Cons(Pair(Num 3, Num 30),
                       Cons(Pair(Num 4, Num 40),
                            Cons(Pair(Num 5, Num 50), Nil(TyPair(TyInt, TyInt))))))),
        Let
          ("key",
           TyInt,
           Num 3,
           MatchWithNothing(App(App(Var "lookup", Var "key"), Var "base_dados"),
                            Num 0,
                            "n",
                            Var "n")))) (* retorno => 30 *)
                            
(* Executa o teste *)
let _ = int_bse(lookupExpr)
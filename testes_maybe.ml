let test_maybe_type () =
  let e = 
    (* Testa um caso com Just e MatchWithNothing *)
    MatchWithNothing(
      Just(Num 42), 
      Num 0, 
      "x", 
      Binop(Sum, Var "x", Num 10)
    )
  in
  int_bse e (*retorno => 52 *)

(* Executa o teste *)
let () = test_maybe_type ()
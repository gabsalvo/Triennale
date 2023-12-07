(*
1. definire funzioni binare non ricorsive Fun2 of ide* ide * exp e una corrispondente Apply2 of exp * exp * exp
*)

type exp = ... | Fun2 of ide * ide * exp

type evT = ... | Closure2 of ide * ide * exp * evt env | Pair of evT * evT

let rec eval e s =
	match e with
	...
	| Fun2(a1,a2, body) -> Closure2(arg1, arg2, fbody, fenv)
	...
	| Apply2(f, a1, a2) ->
	 (match (eval f s) with
	 | Closure2(arg1, arg2, fbody, fDecEnv) ->
	   let a1Val = eval a1 s in
	   let a2Val = eval a2 s in
	   let pairVal = Pair(a1Val, a2Val) in
	   let pairArg = Pair(Den(arg1), arg2) in
	   let newEnv = bind fDecEnv pairArg pairVal in
	   eval fbody newEnv
	 | _ -> raise (RuntimeError "Wrong Type")
	)

(*
2. definire funzioni mutuamente ricorsive: serve un nuovo costrutto 
LetRec2 of ide * ide * exp * ide * ide * exp * exp che definisce due funzioni mutuamente ricorsive.
Nella sintassi, la prima tripla (ide * ide * exp) definisce la prima funzione ricorsiva (come Letrec), 
la seconda tripla (ide * ide * exp) definisce la seconda funzione ricorsiva, e 
l'ultima exp è l'espressione che viene valutata con le due funzioni mutuamente ricorsive definite.
Come esempio prova a valutare
LetRec2 (
  "f", "x", IfThenElse (IsZero (Den "x"), EInt 1, Apply(Den "g", Den "x")),
  "g", "y", Prod (EInt 2, Apply(Den "f", Diff (Den "y", EInt 1))),
  Apply(Den "f", EInt 6)
)
*)

type exp = ... | LetRec2 of ide * ide * exp * ide * ide * exp * exp

let rec eval exp env = match exp with
  ...
  | LetRec2(f1, x1, body1, f2, x2, body2, exp) ->
      let env1 = bind env f1 (RecClosure(f1, x1, body1, env)) in
      let env2 = bind env1 f2 (RecClosure(f2, x2, body2, env1)) in
      let env1Final = bind env2 f1 (RecClosure(f1, x1, body1, env2)) in
      let env2Final = bind env1Final f2 (RecClosure(f2, x2, body2, env1Final)) in
      eval exp env2Final
  ...




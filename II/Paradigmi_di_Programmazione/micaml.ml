type ide = string;;
type tname = TInt | TBool | TString | TClosure | TRecClosure | TUnBound ;;

type exp =
    EInt of int
  | CstTrue
  | CstFalse
  | EString of string
  | Den of ide
  | IsZero of exp
  | Sum of exp * exp
  | Fun of ide * exp
  | Let of ide * exp * exp
  | Letrec of ide * ide * exp * exp
  | Apply of exp * exp
  | IfThenElse of exp * exp * exp
;;

type 't env = ide -> 't;;

type evT =
    Int of int
  | Bool of bool
  | String of string
  | Closure of ide * exp * evT env
  | RecClosure of ide * ide * exp * evT env
  | UnBound
;;

let emptyenv = fun i -> UnBound;;

exception RuntimeError of string;;

let getType (x : evT) =
  match x with
  | Int(i) -> TInt
  | Bool(b) -> TBool
  | String(s) -> TString
  | Closure(i, e, en) -> TClosure
  | RecClosure(f, i, e, en) -> TRecClosure
  | UnBound -> TUnBound;;

let typeCheck (x : tname) (y : evT) =
  match x with
  | TInt -> (match y with
      | Int(i) -> true
      | _ -> false
    )
  | TBool -> (match y with
      | Bool(b) -> true
      | _ -> false
    )
  | TString -> (match y with
      | String(s) -> true
      | _ -> false
    )
  | TClosure -> (match y with
      | Closure(i, e, en) -> true
      | _ -> false
    )
  | TRecClosure -> (match y with
      | RecClosure(f, i, e, en) -> true
      | _ -> false
    )
  | TUnBound -> (match y with
      | UnBound -> true
      | _ -> false
    )
;;

let bind (s: evT env) (x: ide) (v: evT) =
  function i -> if (i=x) then v else s i;;

let isZero (x: evT) =
  match (typeCheck TInt x , x) with
  | (true, Int(v)) -> Bool(v=0)
  | _ -> failwith "Type Error";;

let int_sum(x, y) =
  match (typeCheck TInt x, x, typeCheck TInt y, y) with
  | (true, Int(v1), true, Int(v2)) -> Int(v1+v2)
  | _ -> failwith "Type Error";;

(* Interprete *)
let rec eval (e: exp) (s: evT env) : evT =
  match e with
  | EInt(i) -> Int(i)
  | CstTrue -> Bool(true)
  | CstFalse -> Bool(false)
  | EString(s) -> String(s)
  | Den(i) -> s i
  | IsZero(e1) -> isZero(eval e1 s)
  | Sum(e1, e2) -> int_sum(eval e1 s, eval e2 s)
  | Fun(arg, body) -> Closure(arg, body, s)
  | Let(i, e, letbody) -> eval letbody (bind s i (eval e s))
  | Letrec(f, i, e, letbody) ->
      let renv = bind (s) (f) (RecClosure(f, i, e, s)) in
      eval letbody renv
  | IfThenElse(e1, e2, e3) ->
      let cond = eval e1 s in
      (match (typeCheck TBool cond, cond) with
       | (true, Bool(true)) -> eval e2 s
       | (true, Bool(false)) -> eval e3 s
       | _ -> raise (RuntimeError "Wrong type")
      )
  | Apply(eF, eArg) ->
      let fclosure = eval eF s in
      (match fclosure with
       | Closure(arg, fbody, fDecEnv) ->
           let aVal = eval eArg s in
           let aenv = bind fDecEnv arg aVal in
           eval fbody aenv
       | RecClosure(fname, arg, fbody, fDecEnv) ->
           let aVal = eval eArg s in
           let renv = bind fDecEnv fname fclosure in
           let aenv = bind renv arg aVal in
           eval fbody aenv
       | _ -> raise (RuntimeError "Wrong type")
      )
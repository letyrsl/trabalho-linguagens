-- Análise semântica = avaliação da expressão
module Interpreter where

import Lexer
import Parser

-- verifica se são símbolos terminais (elementares)
isValue :: Expr -> Bool
isValue BTrue = True
isValue BFalse = True
isValue (Num _) = True
isValue (Lam _ _ _) = True

isValue (List _) = True
isValue EndList = True
isValue (Nil) = True

isValue _ = False

-- substituir uma variável x por n
subst :: String -> Expr -> Expr -> Expr
subst x n (Var v) = if (x == v) then n else (Var v)
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (If e1 e2 e3) = If (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (EqEq e1 e2) = EqEq (subst x n e1) (subst x n e2)
subst x n (Lt e1 e2) = Lt (subst x n e1) (subst x n e2)
subst x n (Gt e1 e2) = Gt (subst x n e1) (subst x n e2)
subst x n (Lte e1 e2) = Lte (subst x n e1) (subst x n e2)
subst x n (Gte e1 e2) = Gte (subst x n e1) (subst x n e2)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)

subst x n (Item e1) = Item (subst x n e1)

subst x n e = e

-- calcula resultados das expressões em pequenos passos
step :: Expr -> Expr
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n) e) = Add (Num n) (step e)
step (Add e1 e2) = Add (step e1) e2
step (Sub (Num n1) (Num n2)) = Num (n1 - n2)
step (Sub (Num n) e) = Sub (Num n) (step e)
step (Sub e1 e2) = Sub (step e1) e2
step (Mul (Num n1) (Num n2)) = Num (n1 * n2)
step (Mul (Num n) e) = Mul (Num n) (step e)
step (Mul e1 e2) = Mul (step e1) e2
step (And BFalse _) = BFalse
step (And BTrue e) = e
step (And e1 e2) = And (step e1) e2
step (Or BTrue _) = BTrue
step (Or BFalse e) = e
step (Or e1 e2) = Or (step e1) e2
step (If BFalse e1 e2) = e2
step (If BTrue e1 e2) = e1
step (If e e1 e2) = If (step e) e1 e2
step (EqEq (Num n1) (Num n2)) = if (n1 == n2) then BTrue else BFalse
step (EqEq (Num n) e) = EqEq (Num n) (step e)
step (EqEq e1 e2) = EqEq (step e1) e2
step (Lt (Num n1) (Num n2)) = if (n1 < n2) then BTrue else BFalse
step (Lt (Num n) e) = Lt (Num n) (step e)
step (Lt e1 e2) = Lt (step e1) e2
step (Gt (Num n1) (Num n2)) = if (n1 > n2) then BTrue else BFalse
step (Gt (Num n) e) = Gt (Num n) (step e)
step (Gt e1 e2) = Gt (step e1) e2
step (Lte (Num n1) (Num n2)) = if (n1 <= n2) then BTrue else BFalse
step (Lte (Num n) e) = Lte (Num n) (step e)
step (Lte e1 e2) = Lte (step e1) e2
step (Gte (Num n1) (Num n2)) = if (n1 >= n2) then BTrue else BFalse
step (Gte (Num n) e) = Gte (Num n) (step e)
step (Gte e1 e2) = Gte (step e1) e2
step (Paren e) = e
step (App (Lam x t b) e2) | isValue e2 = subst x e2 b
                          | otherwise = (App (Lam x t b) (step e2))
step (App e1 e2) = App (step e1) e2
step (Let v e1 e2) | isValue e1 = subst v e1 e2
                   | otherwise = Let v (step e1) e2


step (Item e1) | isValue e1 = e1
               | otherwise = step e1

step (BeginList _ e1) = List(execRec e1)
step EndList = EndList

step e = error (show e)


-- se for um valor retorna ele, caso não calcula com step
eval :: Expr -> Expr
eval e | isValue e = e
       | otherwise = eval (step e)


execRec :: [Expr] -> [Expr]
-- quando há somente um elemento na lista, verifica se é um valor, caso não calcula com step
execRec (x:[]) = if isValue x then [ x ] else execRec [ (step x) ]
--  quando há mais de um elemento na lista
-- se x é um valor retorna lista com elemento concatenando com a chamada recursiva da função, passando o restante da lista
-- se x não é um valor, calcula x com step e concatena com a chamada recursiva da função, passando o restante da lista
execRec (x:tl) = if isValue x then [ x ] ++ (execRec tl) else execRec [(step x)] ++ (execRec tl)
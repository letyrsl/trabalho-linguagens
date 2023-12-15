-- Análise semântica = verifica tipos da linguagem, filtra termos inválidos
module TypeChecker where

import Lexer
import Parser
import Interpreter

-- Contexto = lista de variável / tipo
type Ctx = [(String, Ty)]

-- para cada tipo/expressão, verifica se expressão é válida
typeof :: Ctx -> Expr -> Maybe Ty
typeof ctx BTrue = Just TBool
typeof ctx BFalse = Just TBool
typeof ctx (Num _) = Just TNum
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                       (Just TNum, Just TNum) -> Just TNum
                       _                      -> Nothing
typeof ctx (Sub e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                        (Just TNum, Just TNum) -> Just TNum
                        _                      -> Nothing
typeof ctx (Mul e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                        (Just TNum, Just TNum) -> Just TNum
                        _                      -> Nothing
typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                       (Just TBool, Just TBool) -> Just TBool
                       _                        -> Nothing
typeof ctx (Or e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                       (Just TBool, Just TBool) -> Just TBool
                       _                        -> Nothing
typeof ctx (If e1 e2 e3) = case typeof ctx e1 of
                         Just TBool -> case (typeof ctx e2, typeof ctx e3) of
                                         (Just t1, Just t2)       -> if (t1 == t2) then
                                                                       Just t1
                                                                     else
                                                                       Nothing
                                         _                        -> Nothing
                         _          -> Nothing
typeof ctx (EqEq e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                         (Just t1, Just t2) -> Just TBool
                         _                  -> Nothing
typeof ctx (Lt e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                        (Just t1, Just t2) -> Just TBool
                        _                  -> Nothing
typeof ctx (Gt e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                        (Just t1, Just t2) -> Just TBool
                        _                  -> Nothing
typeof ctx (Lte e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                         (Just t1, Just t2) -> Just TBool
                         _                  -> Nothing
typeof ctx (Gte e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                          (Just t1, Just t2) -> Just TBool
                          _                  -> Nothing
typeof ctx (Paren e) = typeof ctx e
typeof ctx (Var x) = lookup x ctx
typeof ctx (Lam v t1 b) = let newCtx = (v, t1):ctx
                            in case typeof newCtx b of
                              Just t2 -> Just (TFun t1 t2)
                              _       -> Nothing

typeof ctx (App e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                          (Just (TFun t11 t12), Just t2) -> if (t11 == t2) then
                                                              Just t12
                                                            else
                                                              Nothing
                          _ -> Nothing

typeof ctx (Let v e1 e2) = case typeof ctx e1 of
                            Just t1 -> typeof ((v, t1):ctx) e2
                            _ -> Nothing


typeof ctx (BeginList _ _) = Nothing
typeof ctx (Item _) = Nothing
typeof ctx (Nil) = Just TNil

typecheck :: Expr -> Expr
typecheck e = case typeof [] e of
                Just _ -> e
                _      -> e

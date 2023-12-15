-- Sintaxe concreta = código que o programador escreve
-- Sintaxe abstrata = representação interna da sintaxe (Expr)

-- Análise sintática = reconhece e valida ordem dos tokens ([token] -> Expr)

-- Para gerar Parser = happy Parser.y
{
module Parser where

import Lexer
}

%name parser
%tokentype { Token }
%error { parserError }

-- ordem de processamento dos tokens
%left '+'

-- mapeamento dos tokens
%token
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    '-'         { TokenSub }
    '*'         { TokenMul }
    "&&"        { TokenAnd }
    "||"        { TokenOr }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    '='         { TokenEq }
    let         { TokenLet }
    in          { TokenIn }
    ':'         { TokenColon }
    Num         { TokenNumber }
    Bool        { TokenBoolean }
    "=="        { TokenEqEq }
    "<"         { TokenLt }
    ">"         { TokenGt }
    "<="        { TokenLte }
    ">="        { TokenGte }

    list        { TokenList }
    '#'         { TokenHash }
    Mixed       { TokenMixed }
    ','         { TokenComma }
    ';'         { TokenEndList }
    "<-"        { TokenItem }
%%

-- ordem de digitação dos tokens (GLC)
-- $Num = número de ordem do token
Exp         : num                        { Num $1 }
            | true                       { BTrue }
            | false                      { BFalse }
            | Exp '+' Exp                { Add $1 $3 }
            | Exp '-' Exp                { Sub $1 $3 }
            | Exp '*' Exp                { Mul $1 $3 }
            | Exp "&&" Exp               { And $1 $3 }
            | Exp "||" Exp               { Or $1 $3 }
            | if Exp then Exp else Exp   { If $2 $4 $6 }
            | var                        { Var $1 }
            | '\\' var ':' Type "->" Exp { Lam $2 $4 $6 }
            | '(' Exp ')'                { Paren $2 }
            | let var '=' Exp in Exp     { Let $2 $4 $6 }
            | Exp "==" Exp               { EqEq $1 $3 }
            | Exp "<" Exp                { Lt $1 $3 }
            | Exp ">" Exp                { Gt $1 $3 }
            | Exp "<=" Exp               { Lte $1 $3 }
            | Exp ">=" Exp               { Gte $1 $3 }

            | list '#' Type ':' items ';' { BeginList $3 $5 }
            | list '#' Type ':' ';'       { Nil }

Type    : Bool                           { TBool }
        | Mixed                          { TMixed }
        | Num                            { TNum }
        | '(' Type "->" Type ')'         { TFun $2 $4 }

        | list '#' Mixed ':'              { TList TNum }


item :: { Expr }
    : Exp { $1 } -- associa item a uma expressão da linguagem

items_ :: { [ Expr ] }
    : item { [ $1 ] } -- um único item, retorna lista com este item
    | item ';' { [ $1 ] } -- item seguido de ';', retorna lista com este item
    | items_ "<-" item { $3 : $1 } -- recursão de lista de itens

-- Reverte ordem dos itens
items : items_ { reverse $1 }

{

parserError :: [Token] -> a
parserError _ = error "Syntax error!"

}
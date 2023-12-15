-- ghc Main.hs -> gera arquivo de execução
-- echo "2+3" | runghc Main.hs -> executar direto no terminal
-- cat example.mylang | runghc Main.hs -> executar por arquivo

module Main where

import Lexer
import Parser
import TypeChecker
import Interpreter

--
main = getContents >>=  print . eval . typecheck . parser . lexer

{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t8
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 (Expr)
	| HappyAbsSyn7 ([ Expr ])
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,168) ([49408,601,8,4,0,0,0,0,3968,61440,1,0,0,0,0,0,39952,32805,0,0,0,0,8,0,26372,8201,0,128,0,0,0,4,16384,10288,0,1024,0,992,31752,0,0,2,15872,49154,7,26372,8201,4096,9628,128,28736,150,2,22977,2050,1024,2407,32,39952,32805,16384,38512,512,49408,601,8,26372,8201,4096,9628,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,2407,32,0,33540,2,0,0,49408,601,8,0,32,0,1024,643,0,0,0,0,0,0,0,64,0,0,0,0,2048,0,32,0,26372,8201,57346,16387,124,0,8,0,1086,1984,1024,2407,32,39952,32805,16384,38512,512,15872,49152,7,0,0,0,0,4096,0,0,32,0,0,0,49408,160,0,128,0,0,0,0,128,0,0,0,4096,9628,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","item","items_","items","num","'+'","'-'","'*'","\"&&\"","\"||\"","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'='","let","in","':'","Num","Bool","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","list","'#'","Mixed","','","';'","\"<-\"","%eof"]
        bit_start = st * 42
        bit_end = (st + 1) * 42
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..41]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (9) = happyShift action_2
action_0 (15) = happyShift action_4
action_0 (16) = happyShift action_5
action_0 (17) = happyShift action_6
action_0 (20) = happyShift action_7
action_0 (21) = happyShift action_8
action_0 (23) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (36) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (9) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (10) = happyShift action_17
action_3 (11) = happyShift action_18
action_3 (12) = happyShift action_19
action_3 (13) = happyShift action_20
action_3 (14) = happyShift action_21
action_3 (31) = happyShift action_22
action_3 (32) = happyShift action_23
action_3 (33) = happyShift action_24
action_3 (34) = happyShift action_25
action_3 (35) = happyShift action_26
action_3 (42) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (9) = happyShift action_2
action_6 (15) = happyShift action_4
action_6 (16) = happyShift action_5
action_6 (17) = happyShift action_6
action_6 (20) = happyShift action_7
action_6 (21) = happyShift action_8
action_6 (23) = happyShift action_9
action_6 (26) = happyShift action_10
action_6 (36) = happyShift action_11
action_6 (4) = happyGoto action_16
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_10

action_8 (20) = happyShift action_15
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (9) = happyShift action_2
action_9 (15) = happyShift action_4
action_9 (16) = happyShift action_5
action_9 (17) = happyShift action_6
action_9 (20) = happyShift action_7
action_9 (21) = happyShift action_8
action_9 (23) = happyShift action_9
action_9 (26) = happyShift action_10
action_9 (36) = happyShift action_11
action_9 (4) = happyGoto action_14
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (20) = happyShift action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (37) = happyShift action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (23) = happyShift action_42
action_12 (29) = happyShift action_43
action_12 (30) = happyShift action_44
action_12 (36) = happyShift action_45
action_12 (38) = happyShift action_46
action_12 (5) = happyGoto action_41
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (25) = happyShift action_40
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (10) = happyShift action_17
action_14 (11) = happyShift action_18
action_14 (12) = happyShift action_19
action_14 (13) = happyShift action_20
action_14 (14) = happyShift action_21
action_14 (24) = happyShift action_39
action_14 (31) = happyShift action_22
action_14 (32) = happyShift action_23
action_14 (33) = happyShift action_24
action_14 (34) = happyShift action_25
action_14 (35) = happyShift action_26
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (28) = happyShift action_38
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (10) = happyShift action_17
action_16 (11) = happyShift action_18
action_16 (12) = happyShift action_19
action_16 (13) = happyShift action_20
action_16 (14) = happyShift action_21
action_16 (18) = happyShift action_37
action_16 (31) = happyShift action_22
action_16 (32) = happyShift action_23
action_16 (33) = happyShift action_24
action_16 (34) = happyShift action_25
action_16 (35) = happyShift action_26
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (9) = happyShift action_2
action_17 (15) = happyShift action_4
action_17 (16) = happyShift action_5
action_17 (17) = happyShift action_6
action_17 (20) = happyShift action_7
action_17 (21) = happyShift action_8
action_17 (23) = happyShift action_9
action_17 (26) = happyShift action_10
action_17 (36) = happyShift action_11
action_17 (4) = happyGoto action_36
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (9) = happyShift action_2
action_18 (15) = happyShift action_4
action_18 (16) = happyShift action_5
action_18 (17) = happyShift action_6
action_18 (20) = happyShift action_7
action_18 (21) = happyShift action_8
action_18 (23) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (36) = happyShift action_11
action_18 (4) = happyGoto action_35
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (9) = happyShift action_2
action_19 (15) = happyShift action_4
action_19 (16) = happyShift action_5
action_19 (17) = happyShift action_6
action_19 (20) = happyShift action_7
action_19 (21) = happyShift action_8
action_19 (23) = happyShift action_9
action_19 (26) = happyShift action_10
action_19 (36) = happyShift action_11
action_19 (4) = happyGoto action_34
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (9) = happyShift action_2
action_20 (15) = happyShift action_4
action_20 (16) = happyShift action_5
action_20 (17) = happyShift action_6
action_20 (20) = happyShift action_7
action_20 (21) = happyShift action_8
action_20 (23) = happyShift action_9
action_20 (26) = happyShift action_10
action_20 (36) = happyShift action_11
action_20 (4) = happyGoto action_33
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (9) = happyShift action_2
action_21 (15) = happyShift action_4
action_21 (16) = happyShift action_5
action_21 (17) = happyShift action_6
action_21 (20) = happyShift action_7
action_21 (21) = happyShift action_8
action_21 (23) = happyShift action_9
action_21 (26) = happyShift action_10
action_21 (36) = happyShift action_11
action_21 (4) = happyGoto action_32
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (9) = happyShift action_2
action_22 (15) = happyShift action_4
action_22 (16) = happyShift action_5
action_22 (17) = happyShift action_6
action_22 (20) = happyShift action_7
action_22 (21) = happyShift action_8
action_22 (23) = happyShift action_9
action_22 (26) = happyShift action_10
action_22 (36) = happyShift action_11
action_22 (4) = happyGoto action_31
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (9) = happyShift action_2
action_23 (15) = happyShift action_4
action_23 (16) = happyShift action_5
action_23 (17) = happyShift action_6
action_23 (20) = happyShift action_7
action_23 (21) = happyShift action_8
action_23 (23) = happyShift action_9
action_23 (26) = happyShift action_10
action_23 (36) = happyShift action_11
action_23 (4) = happyGoto action_30
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (9) = happyShift action_2
action_24 (15) = happyShift action_4
action_24 (16) = happyShift action_5
action_24 (17) = happyShift action_6
action_24 (20) = happyShift action_7
action_24 (21) = happyShift action_8
action_24 (23) = happyShift action_9
action_24 (26) = happyShift action_10
action_24 (36) = happyShift action_11
action_24 (4) = happyGoto action_29
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (9) = happyShift action_2
action_25 (15) = happyShift action_4
action_25 (16) = happyShift action_5
action_25 (17) = happyShift action_6
action_25 (20) = happyShift action_7
action_25 (21) = happyShift action_8
action_25 (23) = happyShift action_9
action_25 (26) = happyShift action_10
action_25 (36) = happyShift action_11
action_25 (4) = happyGoto action_28
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (9) = happyShift action_2
action_26 (15) = happyShift action_4
action_26 (16) = happyShift action_5
action_26 (17) = happyShift action_6
action_26 (20) = happyShift action_7
action_26 (21) = happyShift action_8
action_26 (23) = happyShift action_9
action_26 (26) = happyShift action_10
action_26 (36) = happyShift action_11
action_26 (4) = happyGoto action_27
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (10) = happyShift action_17
action_27 (11) = happyShift action_18
action_27 (12) = happyShift action_19
action_27 (13) = happyShift action_20
action_27 (14) = happyShift action_21
action_27 (31) = happyShift action_22
action_27 (32) = happyShift action_23
action_27 (33) = happyShift action_24
action_27 (34) = happyShift action_25
action_27 (35) = happyShift action_26
action_27 _ = happyReduce_18

action_28 (10) = happyShift action_17
action_28 (11) = happyShift action_18
action_28 (12) = happyShift action_19
action_28 (13) = happyShift action_20
action_28 (14) = happyShift action_21
action_28 (31) = happyShift action_22
action_28 (32) = happyShift action_23
action_28 (33) = happyShift action_24
action_28 (34) = happyShift action_25
action_28 (35) = happyShift action_26
action_28 _ = happyReduce_17

action_29 (10) = happyShift action_17
action_29 (11) = happyShift action_18
action_29 (12) = happyShift action_19
action_29 (13) = happyShift action_20
action_29 (14) = happyShift action_21
action_29 (31) = happyShift action_22
action_29 (32) = happyShift action_23
action_29 (33) = happyShift action_24
action_29 (34) = happyShift action_25
action_29 (35) = happyShift action_26
action_29 _ = happyReduce_16

action_30 (10) = happyShift action_17
action_30 (11) = happyShift action_18
action_30 (12) = happyShift action_19
action_30 (13) = happyShift action_20
action_30 (14) = happyShift action_21
action_30 (31) = happyShift action_22
action_30 (32) = happyShift action_23
action_30 (33) = happyShift action_24
action_30 (34) = happyShift action_25
action_30 (35) = happyShift action_26
action_30 _ = happyReduce_15

action_31 (10) = happyShift action_17
action_31 (11) = happyShift action_18
action_31 (12) = happyShift action_19
action_31 (13) = happyShift action_20
action_31 (14) = happyShift action_21
action_31 (31) = happyShift action_22
action_31 (32) = happyShift action_23
action_31 (33) = happyShift action_24
action_31 (34) = happyShift action_25
action_31 (35) = happyShift action_26
action_31 _ = happyReduce_14

action_32 (10) = happyShift action_17
action_32 (11) = happyShift action_18
action_32 (12) = happyShift action_19
action_32 (13) = happyShift action_20
action_32 (14) = happyShift action_21
action_32 (31) = happyShift action_22
action_32 (32) = happyShift action_23
action_32 (33) = happyShift action_24
action_32 (34) = happyShift action_25
action_32 (35) = happyShift action_26
action_32 _ = happyReduce_8

action_33 (10) = happyShift action_17
action_33 (11) = happyShift action_18
action_33 (12) = happyShift action_19
action_33 (13) = happyShift action_20
action_33 (14) = happyShift action_21
action_33 (31) = happyShift action_22
action_33 (32) = happyShift action_23
action_33 (33) = happyShift action_24
action_33 (34) = happyShift action_25
action_33 (35) = happyShift action_26
action_33 _ = happyReduce_7

action_34 (10) = happyShift action_17
action_34 (11) = happyShift action_18
action_34 (12) = happyShift action_19
action_34 (13) = happyShift action_20
action_34 (14) = happyShift action_21
action_34 (31) = happyShift action_22
action_34 (32) = happyShift action_23
action_34 (33) = happyShift action_24
action_34 (34) = happyShift action_25
action_34 (35) = happyShift action_26
action_34 _ = happyReduce_6

action_35 (10) = happyShift action_17
action_35 (11) = happyShift action_18
action_35 (12) = happyShift action_19
action_35 (13) = happyShift action_20
action_35 (14) = happyShift action_21
action_35 (31) = happyShift action_22
action_35 (32) = happyShift action_23
action_35 (33) = happyShift action_24
action_35 (34) = happyShift action_25
action_35 (35) = happyShift action_26
action_35 _ = happyReduce_5

action_36 (11) = happyShift action_18
action_36 (12) = happyShift action_19
action_36 (13) = happyShift action_20
action_36 (14) = happyShift action_21
action_36 (31) = happyShift action_22
action_36 (32) = happyShift action_23
action_36 (33) = happyShift action_24
action_36 (34) = happyShift action_25
action_36 (35) = happyShift action_26
action_36 _ = happyReduce_4

action_37 (9) = happyShift action_2
action_37 (15) = happyShift action_4
action_37 (16) = happyShift action_5
action_37 (17) = happyShift action_6
action_37 (20) = happyShift action_7
action_37 (21) = happyShift action_8
action_37 (23) = happyShift action_9
action_37 (26) = happyShift action_10
action_37 (36) = happyShift action_11
action_37 (4) = happyGoto action_52
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (23) = happyShift action_42
action_38 (29) = happyShift action_43
action_38 (30) = happyShift action_44
action_38 (36) = happyShift action_45
action_38 (38) = happyShift action_46
action_38 (5) = happyGoto action_51
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_12

action_40 (9) = happyShift action_2
action_40 (15) = happyShift action_4
action_40 (16) = happyShift action_5
action_40 (17) = happyShift action_6
action_40 (20) = happyShift action_7
action_40 (21) = happyShift action_8
action_40 (23) = happyShift action_9
action_40 (26) = happyShift action_10
action_40 (36) = happyShift action_11
action_40 (4) = happyGoto action_50
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (28) = happyShift action_49
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (23) = happyShift action_42
action_42 (29) = happyShift action_43
action_42 (30) = happyShift action_44
action_42 (36) = happyShift action_45
action_42 (38) = happyShift action_46
action_42 (5) = happyGoto action_48
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_23

action_44 _ = happyReduce_21

action_45 (37) = happyShift action_47
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_22

action_47 (38) = happyShift action_62
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (22) = happyShift action_61
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (9) = happyShift action_2
action_49 (15) = happyShift action_4
action_49 (16) = happyShift action_5
action_49 (17) = happyShift action_6
action_49 (20) = happyShift action_7
action_49 (21) = happyShift action_8
action_49 (23) = happyShift action_9
action_49 (26) = happyShift action_10
action_49 (36) = happyShift action_11
action_49 (40) = happyShift action_60
action_49 (4) = happyGoto action_56
action_49 (6) = happyGoto action_57
action_49 (7) = happyGoto action_58
action_49 (8) = happyGoto action_59
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (10) = happyShift action_17
action_50 (11) = happyShift action_18
action_50 (12) = happyShift action_19
action_50 (13) = happyShift action_20
action_50 (14) = happyShift action_21
action_50 (27) = happyShift action_55
action_50 (31) = happyShift action_22
action_50 (32) = happyShift action_23
action_50 (33) = happyShift action_24
action_50 (34) = happyShift action_25
action_50 (35) = happyShift action_26
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (22) = happyShift action_54
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (10) = happyShift action_17
action_52 (11) = happyShift action_18
action_52 (12) = happyShift action_19
action_52 (13) = happyShift action_20
action_52 (14) = happyShift action_21
action_52 (19) = happyShift action_53
action_52 (31) = happyShift action_22
action_52 (32) = happyShift action_23
action_52 (33) = happyShift action_24
action_52 (34) = happyShift action_25
action_52 (35) = happyShift action_26
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (9) = happyShift action_2
action_53 (15) = happyShift action_4
action_53 (16) = happyShift action_5
action_53 (17) = happyShift action_6
action_53 (20) = happyShift action_7
action_53 (21) = happyShift action_8
action_53 (23) = happyShift action_9
action_53 (26) = happyShift action_10
action_53 (36) = happyShift action_11
action_53 (4) = happyGoto action_70
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (9) = happyShift action_2
action_54 (15) = happyShift action_4
action_54 (16) = happyShift action_5
action_54 (17) = happyShift action_6
action_54 (20) = happyShift action_7
action_54 (21) = happyShift action_8
action_54 (23) = happyShift action_9
action_54 (26) = happyShift action_10
action_54 (36) = happyShift action_11
action_54 (4) = happyGoto action_69
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (9) = happyShift action_2
action_55 (15) = happyShift action_4
action_55 (16) = happyShift action_5
action_55 (17) = happyShift action_6
action_55 (20) = happyShift action_7
action_55 (21) = happyShift action_8
action_55 (23) = happyShift action_9
action_55 (26) = happyShift action_10
action_55 (36) = happyShift action_11
action_55 (4) = happyGoto action_68
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (10) = happyShift action_17
action_56 (11) = happyShift action_18
action_56 (12) = happyShift action_19
action_56 (13) = happyShift action_20
action_56 (14) = happyShift action_21
action_56 (31) = happyShift action_22
action_56 (32) = happyShift action_23
action_56 (33) = happyShift action_24
action_56 (34) = happyShift action_25
action_56 (35) = happyShift action_26
action_56 _ = happyReduce_26

action_57 (40) = happyShift action_67
action_57 _ = happyReduce_27

action_58 (41) = happyShift action_66
action_58 _ = happyReduce_30

action_59 (40) = happyShift action_65
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_20

action_61 (23) = happyShift action_42
action_61 (29) = happyShift action_43
action_61 (30) = happyShift action_44
action_61 (36) = happyShift action_45
action_61 (38) = happyShift action_46
action_61 (5) = happyGoto action_64
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (28) = happyShift action_63
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_25

action_64 (24) = happyShift action_72
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_19

action_66 (9) = happyShift action_2
action_66 (15) = happyShift action_4
action_66 (16) = happyShift action_5
action_66 (17) = happyShift action_6
action_66 (20) = happyShift action_7
action_66 (21) = happyShift action_8
action_66 (23) = happyShift action_9
action_66 (26) = happyShift action_10
action_66 (36) = happyShift action_11
action_66 (4) = happyGoto action_56
action_66 (6) = happyGoto action_71
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_28

action_68 (10) = happyShift action_17
action_68 (11) = happyShift action_18
action_68 (12) = happyShift action_19
action_68 (13) = happyShift action_20
action_68 (14) = happyShift action_21
action_68 (31) = happyShift action_22
action_68 (32) = happyShift action_23
action_68 (33) = happyShift action_24
action_68 (34) = happyShift action_25
action_68 (35) = happyShift action_26
action_68 _ = happyReduce_13

action_69 (10) = happyShift action_17
action_69 (11) = happyShift action_18
action_69 (12) = happyShift action_19
action_69 (13) = happyShift action_20
action_69 (14) = happyShift action_21
action_69 (31) = happyShift action_22
action_69 (32) = happyShift action_23
action_69 (33) = happyShift action_24
action_69 (34) = happyShift action_25
action_69 (35) = happyShift action_26
action_69 _ = happyReduce_11

action_70 (10) = happyShift action_17
action_70 (11) = happyShift action_18
action_70 (12) = happyShift action_19
action_70 (13) = happyShift action_20
action_70 (14) = happyShift action_21
action_70 (31) = happyShift action_22
action_70 (32) = happyShift action_23
action_70 (33) = happyShift action_24
action_70 (34) = happyShift action_25
action_70 (35) = happyShift action_26
action_70 _ = happyReduce_9

action_71 _ = happyReduce_29

action_72 _ = happyReduce_24

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 6 4 happyReduction_9
happyReduction_9 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_1  4 happyReduction_10
happyReduction_10 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EqEq happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Lt happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Lte happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gte happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 6 4 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (BeginList happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 5 4 happyReduction_20
happyReduction_20 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Nil
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TMixed
	)

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_24 = happyReduce 5 5 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 4 5 happyReduction_25
happyReduction_25 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TList TNum
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_1  6 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  7 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([ happy_var_1 ]
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  7 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([ happy_var_1 ]
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  7 happyReduction_29
happyReduction_29 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  8 happyReduction_30
happyReduction_30 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (reverse happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 42 42 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 9;
	TokenAdd -> cont 10;
	TokenSub -> cont 11;
	TokenMul -> cont 12;
	TokenAnd -> cont 13;
	TokenOr -> cont 14;
	TokenTrue -> cont 15;
	TokenFalse -> cont 16;
	TokenIf -> cont 17;
	TokenThen -> cont 18;
	TokenElse -> cont 19;
	TokenVar happy_dollar_dollar -> cont 20;
	TokenLam -> cont 21;
	TokenArrow -> cont 22;
	TokenLParen -> cont 23;
	TokenRParen -> cont 24;
	TokenEq -> cont 25;
	TokenLet -> cont 26;
	TokenIn -> cont 27;
	TokenColon -> cont 28;
	TokenNumber -> cont 29;
	TokenBoolean -> cont 30;
	TokenEqEq -> cont 31;
	TokenLt -> cont 32;
	TokenGt -> cont 33;
	TokenLte -> cont 34;
	TokenGte -> cont 35;
	TokenList -> cont 36;
	TokenHash -> cont 37;
	TokenMixed -> cont 38;
	TokenComma -> cont 39;
	TokenEndList -> cont 40;
	TokenItem -> cont 41;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 42 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parserError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError :: [Token] -> a
parserError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

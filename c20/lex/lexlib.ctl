; BUILD DECUS LEX LIBRARY FOR TOPS-20
@DEF C: MSC:<C>, PS:<C>
@DEF SS: MSC:
@DEF CLIB: MSC:<C.PCC20LIB>
@DEF SYS: SYS:, C:

@pcc20 LEXSRT.C
@pcc20 COMMEN.C
@pcc20 GETTOK.C
@pcc20 INTEG.C
@pcc20 LEXCHA.C
@pcc20 LEXECH.C
@pcc20 LEXERR.C
@pcc20 LEXGET.C
@pcc20 LEXLEN.C
@pcc20 LEXPEE.C
@pcc20 LEXSWI.C
@pcc20 LLSAVE.C
@pcc20 LMOVB.C
@pcc20 LMOVI.C
@pcc20 TOKEN.C
@pcc20 YYLEX.C
@pcc20 MAPCH.C
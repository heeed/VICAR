C  THIS IS A PROGRAM THAT WILL TEST THE TPGRID SUBROUINE
C

      SUBROUTINE TPGRID()

      IMPLICIT INTEGER(A-Z)
      REAL LOC(2,1000)
C
      CALL XVUNIT(INUNIT,'INP',1,STATUS,' ')
      CALL XVOPEN(INUNIT,STATUS,' ')
      CALL XVSIZE(S1,SS,NL,NS,NLI,NSI,' ')
      NLOC = MAX0(NSI,NS)/2
      DO 10 I=1,NLI
      CALL XVREAD(INUNIT,LOC(1,I),STATUS,'NSAMPS',NSI,' ')
   10 CONTINUE
      NC = 10
      NR = 2
      CALL PGRID(LOC,NR,NC,TRIX,0)
      CALL XVMESSAGE(' ',' ')
      RETURN
      END
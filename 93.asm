
.MODEL small
.STACK 100h 
.DATA

    WELCOMEMSG      db   10,13,"  -------------------Hustler Billiard System------------------------ "
                    db   10,13," |  Welcome to our system			                    |"
                    db   10,13," |  Here can take order easily			                    |"
                    db   10,13," |  First you need to enter system's password to enjoy the services |"
                    db   10,13,"  ------------------------------------------------------------------ $"

    LOGINPROMPT     db   10,13,"  -------------------Enter Staff Password------------------ $"
    PASSWORDPROMPT  db   10,13,"Enter Password: $"
    LOGINFAILURE    db   "Wrong Password Detected!.$"
    LOGINSUCCESS    db   "Login Successfully. Now, you can make your decision!$"
    PASSWORD        db   'coding$'
    TRYAGAIN        db   "Try Again? $"
    INVALIDINPUT    db   10,13,"INVALID INPUT OF NUMERIC VALUE!!!$"
    KEYMSG          db   10,13,"Press any key to continue...$"

    MENU1           db   10,13, "  ----------Menu Flow-------------- "
                    db   10,13, " | 1. Table rent		   |"
                    db   10,13, " | 2. Billiard Cues and Balls      |"
                    db   10,13, " | 3. Side Dishes                  |"
                    db   10,13, " | 4. Side Drinks                  |"
                    db   10,13, " | 5. Bill                         |"
                    db   10,13, "  --------------------------------- $"

    MENU2           db   10,13, "  -----------Table Rent------------ "
                    db   10,13, " | 1. (Pool)1 Hour --- RM20	   |"
                    db   10,13, " | 2. (Pool)3 Hours --- RM50       |"
                    db   10,13, " | 3. (Snooker)1 Hour --- RM30     |"
                    db   10,13, " | 4. (Snooker)3 Hours --- RM70    |"
                    db   10,13, " | 5. Daily Pass (either) --- RM100|"
                    db   10,13, "  --------------------------------- $"

    MENU3           db   10,13, "  -------- Billiard Cues ----------- "
                    db   10,13, " | 1. Pool Hard Cues --- RM15       |"
                    db   10,13, " | 2. Pool Smooth Cues --- RM20     |"
                    db   10,13, " | 3. Snooker Wooden Cues --- RM20  |"
                    db   10,13, " | 4. Snooker Solid Cues --- RM25   |"
                    db   10,13, " | 5. Skip			    |"
                    db   10,13, "  ---------------------------------- "
                    db   10,13, "*An Extra For Person needed rent for Cues$"

    MENU4           db   10,13, "  ----------- Side Dishes --------- "
                    db   10,13, " | 1. Cheesy Wedges --- RM30	   |"
                    db   10,13, " | 2. Fried Chicken Wings --- RM40 |"
                    db   10,13, " | 3. Stirpan Maggi --- RM45       |"
                    db   10,13, " | 4. Aloha Chiken Pizza --- RM60  |"
                    db   10,13, " | 5. Skip			   |"
                    db   10,13, "  --------------------------------- "
                    db   10,13, " *Its unlimited refill $"

    MENU5           db   10,13, "  ----------- Side Drinks --------- "
                    db   10,13, " | 1. Orange Juice --- RM10	   |"
                    db   10,13, " | 2. Soft Drinks --- RM15         |"
                    db   10,13, " | 3. Nescafe White Coffee --- RM15|"
                    db   10,13, " | 4. Boba Milk Tea --- RM20       |"
                    db   10,13, " | 5. Skip			   |"
                    db   10,13, "  --------------------------------- "
                    db   10,13, " *Its unlimited refill $"


    EXITMSG         db   10,13, 10,13,"OPTION: "
                    db   10,13,"Choose 0: End this Session."
                    db   10,13,"Choose 1: Continue Session. $"

    P1HMSG          db   10,13,"Pool rent for 1 hour added to bag $"
    P2HMSG          db   10,13,"Pool rent for 3 hour added to bag $"
    S1HMSG          db   10,13,"Snooker rent for 1 hour added to bag $"
    S2HMSG          db   10,13,"Snooker rent for 3 hour added to bag$"
    PSHMSG          db   10,13,"Daily Pass for Snoorkel(1)/Pool(0)?$"
    P3HMSG          db   10,13,"Pool rent for DAILY PASS added to bag $"
    S3HMSG          db   10,13,"Snooker rent for DAILY PASS added to bag$"

    C1MSG           db   10,13,"Pool Hard Cues added to bags$"
    C2MSG           db   10,13,"Pool Smooth Cues added to bags$"
    C3MSG           db   10,13,"Snooker Wooden Cues added to bags$"
    C4MSG           db   10,13,"Snooker Solid Cues added to bags$"

    F1MSG           db   10,13,"Cheesy Wedges added to bag$"
    F2MSG           db   10,13,"Fried Chicken Wings to bag$"
    F3MSG           db   10,13,"Stirpan Maggi added to bag$"
    F4MSG           db   10,13,"Aloha Chiken Pizza added to bag$"

    D1MSG           db   10,13,"Orange Juice added to bags$"
    D2MSG           db   10,13,"Soft Drinks added to bags$"
    D3MSG           db   10,13,"Nescafe White Coffee added to bags$"
    D4MSG           db   10,13,"Boba Milk Tea added to bags$"


    OPTIONMSG       db   10,13,"Choose Option: $"
    INVALIDOPTION2  db   " Invalid Option. Please select 0 OR 1$"
    INVALIDOPTION4  db   " Invalid Option. Please select 1 to 4$"
    INVALIDOPTION5  db   10,13," Invalid Option. Please select 1 to 5$"
    QUANTITYMSG     db   10,13,"Enter quantity (Max 3): $"
    INVALIDINPUTMSG db   10,13,"Invalid Input. Enter the correct numeric value for quantity OR in range of 3. $"
    FROMMSG         db   0

    NEWLINE         db   10,13,"$"
    STRDASH         DB   10,13,"|----------------------------------------------------------------|$"

    HUNDRED         DB   100
    DISCOUNTRATE    db   10
    GRANDTOTAL      DW   ?
    TOTAL           DB   0
    DISCOUNT        DW   ?
    SPACE1          db   10,13,"|  $"
    SPACE2          db   ".  |$"
    SPACE3          DB   "|"
    SPACE           DB   " $"
    BILLMSG         db   10,13,"---------------------RECEIPT GENERATE HERE------------------------$"
    TTLPRINT        DB   10,13,"|TOTAL:                                                 RM $"
    DSCPRINT        DB   10,13,"|DISCOUNT REWARDED (10%):                               RM $"
    NDSCPRINT       DB   10,13,"|NO DISCOUNT REWARDED:                                  RM $"
    TAXPRINT        DB   10,13,"|TAX:                                                     RM $"
    GDTPRINT        DB   10,13,"|GRAND TOTAL:                                           RM $"
    LYTPRINT        DB   10,13,"|LOYALTY POINT EARNED:                                  $"
    LYTPRINT1       DB   "Points$"
    EQLPRINT        DB   10,13,"|                                                       --=====--|$"
    TPRINT1         DB   " Pool Table Rent (1h)                           RM  20.00|$"
    TPRINT2         DB   " Pool Table Rent (3h)                           RM  50.00|$"
    TPRINT3         DB   " Snooker Table Rent (1h)                        RM  30.00|$"
    TPRINT4         DB   " Snooker Table Rent (1h)                        RM  70.00|$"
    TPRINT5         DB   " Daily Pass                                            |$"
    TTPRINT1        DB   10,13,"|      |     -Snooker                                   RM 100.00|$"
    TTPRINT0        DB   10,13,"|      |     -Pool                                      RM 100.00|$"
    CQPRINT1        DB   10,13,"|      |     -1                                         RM  15.00|$"
    CQPRINT4        DB   10,13,"|      |     -1                                         RM  20.00|$"
    CQPRINT7        DB   10,13,"|      |     -1                                         RM  25.00|$"
    CQPRINT2        DB   10,13,"|      |     -2                                         RM  30.00|$"
    CQPRINT5        DB   10,13,"|      |     -2                                         RM  40.00|$"
    CQPRINT8        DB   10,13,"|      |     -2                                         RM  50.00|$"
    CQPRINT3        DB   10,13,"|      |     -3                                         RM  45.00|$"
    CQPRINT6        DB   10,13,"|      |     -3                                         RM  60.00|$"
    CQPRINT9        DB   10,13,"|      |     -3                                         RM  75.00|$"
    CPRINT1         DB   " Pool Hard Cue(s)                                        |$"
    CPRINT2         DB   " Pool Smooth Cue(s)                                      |$"
    CPRINT3         DB   " Snooker Wooden Cue(s)                                   |$"
    CPRINT4         DB   " Snooker Solid Cue(s)                                    |$"
    FPRINT1         DB   " Cheesy Wedges                                  RM  30.00|$"
    FPRINT2         DB   " Fried Chicken Wings                            RM  40.00|$"
    FPRINT3         DB   " Stirpan Maggi                                  RM  45.00|$"
    FPRINT4         DB   " Aloha Chiken Pizza                             RM  60.00|$"
    DPRINT1         DB   " Orange Juice                                   RM  10.00|$"
    DPRINT2         DB   " Soft Drinks                                    RM  15.00|$"
    DPRINT3         DB   " Nescafe White Coffee                           RM  15.00|$"
    DPRINT4         DB   " Boba Milk Tea                                  RM  20.00|$"
    PYMTINPUTMSG    DB   10,13,"---------------------CUSTOMER PAYMENT HERE---------------------"
                    DB   10,13,"Enter Customer Cash Payment (1234.56): RM$"
    PYMTOUTPUTMSG   DB   10,13,"Return Cash: $"
    INVALIDPYMTMSG1 DB   10,13,"*Invalid Input!"
                    DB   10,13,"Please ensure *In format of (1234.56) and press enter for next $"
    INVALIDPYMTMSG2 DB   10,13,"*Invalid Input!"
                    DB   10,13,"Please ensure *Input value greater than GrandTotal $"
    PYMTTHANKMSG    DB   10,13,"-------------------------THANK YOU !!!-------------------------$"

    BCOUNTER        DB   '1'
    LOYALTYPOINT    db   ?
    SUBTOTAL        db   ?
    QUANTITY        DW   ?
    PRICE           db   ?
    HOLDPRICE       db   ?
    DISCMSG         DB   10,13,"DISCOUNT BEEN REWARDED$"
    NDISCMSG        DB   10,13,"NO DISCOUNT REWARDED|$"
    STRDISCOUNT     db   'Discounted Total: $', '$'
    STRTOTAL        db   'Total: $', '$'
    HOLDTOTAL       DB   0
    HOLDTOTAL2      DB   0
    HOLDDATA        DB   0
    HOLDDATAA       DB   0
    HOLDDATAAA      DB   0
    CQRECORD        DB   0
    CRECORD         DB   0
    TTRECORD        DB   0
    DRECORD         DB   0
    FRECORD         DB   0
    TRECORD         DB   0
    QRECORD         DB   0
    TSTOTAL         DB   0
    CSTOTAL         DB   0
    FSTOTAL         DB   0
    DSTOTAL         DB   0
    D1              DB   0
    D2              DB   0
    D3              DB   0
    DN1             DB   0
    DN2             DB   0
    TD1             DB   0
    TD2             DB   0
    TDN1            DB   0
    TDN2            DB   0
    TEN             DB   10
    SIX             DB   6
    HOLDTCD1        DB   0
    HOLDTCD2        DB   0
    HOLDTCD3        DB   0
    HOLDTCDN1       DB   0
    HOLDTCDN2       DB   0
    PD1             DB   0
    PD2             DB   0
    PD3             DB   0
    PD4             DB   0
    PDN1            DB   0
    PDN2            DB   0

                    PYMT LABEL BYTE
    MAX             DB   8
    ACT             DB   ?
    PYMTDATA        DB   7 DUP (0),"$"

.CODE
MAIN PROC
                             mov  AX,@DATA
                             mov  DS, AX

                             MOV  AH, 06h                     ; Scroll up function
                             XOR  AL, AL                      ; Clear entire screen
                             XOR  CX, CX                      ; Upper left corner CH=row, CL=column
                             MOV  DX, 184FH                   ; lower right corner DH=row, DL=column
                             MOV  BH, 1Eh                     ; YellowOnBlue
                             INT  10H
    ;display welcome message
                             MOV  AH,09H
                             LEA  DX,WELCOMEMSG
                             INT  21H
                             MOV  AH,09H
                             LEA  DX,NEWLINE
                             INT  21H
                             MOV  AH,09H
                             LEA  DX,LOGINPROMPT
                             INT  21H
    ;PASSWORD INPUT AND VALIDATION HERE---------------------------------------------------------------
    PASSWORD_LABEL:          
                             MOV  AH,09H
                             LEA  DX,PASSWORDPROMPT
                             INT  21H
                             MOV  AH,9
                             LEA  DX, NEWLINE
                             INT  21H

                             MOV  SI,0                        ;TRAVEL THROUGH PASSWORD ARRAY
                             MOV  CX,6                        ; LENGTH OF PASSWORD COMPARE 'CODING'

    CHECK:                   
                             MOV  AH,7
                             INT  21H
                             CMP  AL,PASSWORD[SI]
                             JNE  INCORRECT
                             INC  SI
                             LOOP CHECK

                             MOV  AH,9
                             LEA  DX, KEYMSG
                             INT  21H
 
                             MOV  AH,1
                             INT  21H
                             JMP  MENU1_JMP

    INCORRECT:               
                             MOV  AH,9
                             LEA  DX, LOGINFAILURE
                             INT  21H
                             MOV  AH,9
                             LEA  DX, NEWLINE
                             INT  21H
                             MOV  AH,9
                             LEA  DX, TRYAGAIN
                             INT  21H
                             MOV  AH,9
                             LEA  DX,EXITMSG
                             INT  21H
                             MOV  AH,1
                             INT  21H
                             CMP  AL, '1'
                             JE   PASSWORD_LABEL
                             CMP  AL, '0'
                             JE   EXIT1
                             JMP  INVALID_INPUT

    EXIT1:                   
                             mov  ah,4ch                      ;console return to dos
                             int  21h
        
    INVALID_INPUT:           
                             MOV  AH,9
                             LEA  DX, INVALIDINPUT
                             INT  21H
                             JMP  INCORRECT
    ;TABLE RENT MENU HERE---------------------------------------------------------------------
    MENU1_JMP:               
                             MOV  AH, 06h                     ; Scroll up function
                             XOR  AL, AL                      ; Clear entire screen
                             XOR  CX, CX                      ; Upper left corner CH=row, CL=column
                             MOV  DX, 184FH                   ; lower right corner DH=row, DL=column
                             MOV  BH, 1eh                     ; YellowOnBlue
                             INT  10H
                             MOV  AH,9
                             LEA  DX, MENU1
                             INT  21H
 
                             MOV  AH,9
                             LEA  DX, KEYMSG
                             INT  21H
                             MOV  AH,1
                             INT  21H

    OPTION1_JMP:             
                             MOV  AH,9
                             LEA  DX, MENU2
                             INT  21H
                             MOV  AH,9
                             LEA  DX, OPTIONMSG
                             INT  21H
                             MOV  AH,1
                             INT  21H
                             CMP  AL, '1'
                             JE   RENT_P1H
                             CMP  AL, '2'
                             JE   RENT_P2H
                             CMP  AL, '3'
                             JE   RENT_S1H
                             CMP  AL, '4'
                             JE   RENT_S2H
                             CMP  AL, '5'
                             JE   RENT_FULL
                             JMP  MENU1_INVALID

    RENT_P1H:                
                             MOV  TRECORD,1
                             MOV  TSTOTAL,20
                             MOV  AH,09H
                             LEA  DX, P1HMSG
                             INT  21H
                             JMP  MENU3_JMP

    RENT_P2H:                
                             MOV  TRECORD,2
                             MOV  TSTOTAL,50
                             MOV  AH,09H
                             LEA  DX, P2HMSG
                             INT  21H
                             JMP  MENU3_JMP

    RENT_S1H:                
                             MOV  TRECORD,3
                             MOV  TSTOTAL,30
                             MOV  AH,09H
                             LEA  DX, S1HMSG
                             INT  21H
                             JMP  MENU3_JMP

    RENT_S2H:                
                             MOV  TRECORD,4
                             MOV  TSTOTAL,70
                             MOV  AH,09H
                             LEA  DX, S2HMSG
                             INT  21H
                             JMP  MENU3_JMP


    RENT_FULL:               
                             MOV  TRECORD,5
                             MOV  TSTOTAL,100
                             MOV  AH,9H
                             LEA  DX, PSHMSG
                             INT  21H
                             MOV  AH,1
                             INT  21H
                             CMP  AL, '1'
                             JE   S3HMSG_JMP
                             CMP  AL, '0'
                             JE   P3HMSG_JMP
                             MOV  AH,9
                             LEA  DX,INVALIDOPTION2
                             INT  21H
                             JMP  OPTION1_JMP

    S3HMSG_JMP:              
                             MOV  TTRECORD,1
                             MOV  AH,9
                             LEA  DX, S3HMSG
                             INT  21H
                             JMP  MENU3_JMP
 
    P3HMSG_JMP:              
                             MOV  TTRECORD,0
                             MOV  AH,9
                             LEA  DX, P3HMSG
                             INT  21H
                             JMP  MENU3_JMP

    MENU1_INVALID:           
                             MOV  AH,9
                             LEA  DX, INVALIDOPTION5
                             INT  21H
                             JMP  OPTION1_JMP
    ;CUE RENTING MENU HERE -----------------------------------------------
    MENU3_JMP:               
                             MOV  AH,9
                             LEA  DX,MENU3
                             INT  21H
                             MOV  AH,9
                             LEA  DX,OPTIONMSG
                             INT  21H
                             MOV  AH,1
                             INT  21H
                             CMP  AL,'1'
                             JE   RENT_CUE1
                             CMP  AL,'2'
                             JE   RENT_CUE2JMP
                             CMP  AL,'3'
                             JE   CUE3_JMP
                             JMP  START2
    RENT_CUE2JMP:            
                             JMP  RENT_CUE2
    START2:                  
                             CMP  AL,'4'
                             JE   CUE4_JMP
                             CMP  AL,'5'
                             JE   MENU4_JMPJMP
                             JMP  MENU3_INVALID

    RENT_CUE1:               
                             MOV  CRECORD,1
                             MOV  AH,9
                             LEA  DX,QUANTITYMSG
                             INT  21H
                             MOV  FROMMSG,1
                             MOV  AH,1
                             INT  21H
                             CMP  AL,'4'
                             JAE  QUANTITYFALSE_JMP
                             MOV  QRECORD,AL
                             MOV  AH,0
  
                             MOV  QUANTITY, AX
                             SUB  CSTOTAL, 30H
                             SUB  QUANTITY, 30H
                             MOV  SI,1
                             MOV  CX,QUANTITY
    L1:                      
                             ADD  CSTOTAL,15
                             INC  SI
                             LOOP L1

                             ADD  CSTOTAL,30H
                             MOV  AH,9
                             LEA  DX,C1MSG
                             INT  21H
                             CMP  QRECORD,'1'
                             JE   CQRECORD1
                             CMP  QRECORD,'2'
                             JE   CQRECORD2

                             CMP  QRECORD,'3'
                             JE   CQRECORD3

    CQRECORD1:               
                             MOV  CQRECORD,1
                             JMP  MENU4_JMP
    CQRECORD2:               
                             MOV  CQRECORD,2
                             JMP  MENU4_JMP
    CUE3_JMP:                
                             JMP  RENT_CUE3

    CQRECORD3:               
                             MOV  CQRECORD,3
                             JMP  MENU4_JMP


    CUE4_JMP:                
                             JMP  RENT_CUE4
    MENU4_JMPJMP:            
                             JMP  MENU4_JMP
    QUANTITYFALSE_JMP:       
                             JMP  QUANTITYFALSE
    RENT_CUE2:               
                             MOV  CRECORD,2
                             MOV  AH,9
                             LEA  DX,QUANTITYMSG
                             INT  21H
                             MOV  FROMMSG,2
                             MOV  AH,1
                             INT  21H
                             CMP  AL,'4'
                             JAE  QUANTITYFALSE_JMP
                             MOV  QRECORD,AL
                             MOV  AH,0
  
                             MOV  QUANTITY, AX
                             SUB  CSTOTAL,30H
                             SUB  QUANTITY, 30H
                             MOV  SI,1
                             MOV  CX,QUANTITY
    L2:                      
                             ADD  CSTOTAL,20
                             INC  SI
                             LOOP L2

                             ADD  CSTOTAL,30H
                             MOV  AH,9
                             LEA  DX,C2MSG
                             INT  21H
                             CMP  QRECORD,'1'
                             JE   CQRECORD4
                             CMP  QRECORD,'2'
                             JE   CQRECORD5

                             CMP  QRECORD,'3'
                             JE   CQRECORD6

    CQRECORD4:               
                             MOV  CQRECORD,4
                             JMP  MENU4_JMP
    CQRECORD5:               
                             MOV  CQRECORD,5
                             JMP  MENU4_JMP
    CQRECORD6:               
                             MOV  CQRECORD,6
                             JMP  MENU4_JMP
    QUANTITYFALSE_JMPJMP:    
                             JMP  QUANTITYFALSE_JMP

    RENT_CUE3:               
                             MOV  CRECORD,3
                             MOV  AH, 9
                             LEA  DX, QUANTITYMSG
                             INT  21H

                             MOV  AH, 1
                             INT  21H
                             CMP  AL, '4'
                             JAE  QUANTITYFALSE_JMPJMP
                             MOV  QRECORD,AL
                             MOV  AH,0
  
                             MOV  QUANTITY, AX
                             SUB  CSTOTAL,30H
                             SUB  QUANTITY, 30H
                             MOV  SI,1
                             MOV  CX,QUANTITY
    L3:                      
                             ADD  CSTOTAL,20
                             INC  SI
                             LOOP L3

                             ADD  CSTOTAL,30H

                             MOV  AH, 9
                             LEA  DX, C3MSG
                             INT  21H
                             CMP  QRECORD,'1'
                             JE   CQRECORD4
                             CMP  QRECORD,'2'
                             JE   CQRECORD5
                             CMP  QRECORD,'3'
                             JE   CQRECORD6




    RENT_CUE4:               
                             MOV  CRECORD,4
                             MOV  AH,9
                             LEA  DX,QUANTITYMSG
                             INT  21H
                             MOV  FROMMSG,4
                             MOV  AH,1
                             INT  21H
                             CMP  AL,'4'
                             JAE  QUANTITYFALSE
  
                             MOV  QRECORD,AL
                             MOV  AH,0
  
                             MOV  QUANTITY, AX
                             SUB  CSTOTAL,30H
                             SUB  QUANTITY, 30H
                             MOV  SI,1
                             MOV  CX,QUANTITY
    L4:                      
                             ADD  CSTOTAL,25
                             INC  SI
                             LOOP L4

                             ADD  CSTOTAL,30H

                             MOV  AH,9
                             LEA  DX,C4MSG
                             INT  21H
                             CMP  QRECORD,'1'
                             JE   CQRECORD7
                             CMP  QRECORD,'2'
                             JE   CQRECORD8
                             CMP  QRECORD,'3'
                             JE   CQRECORD9
    RENT_CUE1JMP:            
                             JMP  RENT_CUE1
    RENT_CUE2JMPJMP:         
                             JMP  RENT_CUE2
    RENT_CUE3JMP:            
                             JMP  RENT_CUE3


    QUANTITYFALSE:           
                             MOV  AH,9
                             LEA  DX, INVALIDINPUTMSG
                             INT  21H
                             CMP  FROMMSG,1
                             JE   RENT_CUE1JMP
                             CMP  FROMMSG,2
                             JE   RENT_CUE2JMPJMP
                             JMP  START_1
    RENT_CUE3_JMP:           
                             JMP  RENT_CUE3
    RENT_CUE4_JMP:           
                             JMP  RENT_CUE4
    START_1:                 
                             CMP  FROMMSG,3
                             JE   RENT_CUE3_JMP
                             CMP  FROMMSG,4
                             JE   RENT_CUE4_JMP

    MENU3_INVALID:           
                             MOV  AH,9
                             LEA  DX, INVALIDOPTION5
                             INT  21H
                             JMP  MENU3_JMP

    CQRECORD7:               
                             MOV  CQRECORD,7
                             JMP  MENU4_JMP
    CQRECORD8:               
                             MOV  CQRECORD,8
                             JMP  MENU4_JMP
    CQRECORD9:               
                             MOV  CQRECORD,9
                             JMP  MENU4_JMP
    ;FOOD MSG HERE--------------------------------------------------------
    MENU4_JMP:               
                             MOV  AH,9
                             LEA  DX,MENU4
                             INT  21H
                             MOV  AH,9
                             LEA  DX,OPTIONMSG
                             INT  21H
                             MOV  AH,1
                             INT  21H
                             CMP  AL,'1'
                             JE   FOODOPT1
                             CMP  AL,'2'
                             JE   FOODOPT2
                             CMP  AL,'3'
                             JE   FOODOPT3
                             CMP  AL,'4'
                             JE   FOODOPT4
                             CMP  AL,'5'
                             JE   MENU5_JMP
                             JMP  MENU4_INVALID

    FOODOPT1:                
                             MOV  FSTOTAL,30
                             MOV  FRECORD,1
                             MOV  AH,09H
                             LEA  DX, F1MSG
                             INT  21H
                             JMP  MENU5_JMP

    FOODOPT2:                
                             MOV  FSTOTAL,40
                             MOV  FRECORD,2
                             MOV  AH,09H
                             LEA  DX, F2MSG
                             INT  21H
                             JMP  MENU5_JMP
    FOODOPT3:                
                             MOV  FSTOTAL,45
                             MOV  FRECORD,3
                             MOV  AH,09H
                             LEA  DX, F3MSG
                             INT  21H
                             JMP  MENU5_JMP

    FOODOPT4:                
                             MOV  FSTOTAL,60
                             MOV  FRECORD,4
                             MOV  AH,09H
                             LEA  DX, F4MSG
                             INT  21H
                             JMP  MENU5_JMP

    MENU4_INVALID:           
                             MOV  AH,9
                             LEA  DX, INVALIDOPTION5
                             INT  21H
                             JMP  MENU4_JMP
    ;BEVERAGE MSG HERE-----------------------------------------
    MENU5_JMP:               
                             MOV  AH,9
                             LEA  DX,MENU5
                             INT  21H
                             MOV  AH,9
                             LEA  DX,OPTIONMSG
                             INT  21H
                             MOV  AH,1
                             INT  21H
                             CMP  AL,'1'
                             JE   DRINKOPT1
                             CMP  AL,'2'
                             JE   DRINKOPT2
                             CMP  AL,'3'
                             JE   DRINKOPT3
                             CMP  AL,'4'
                             JE   DRINKOPT4
                             CMP  AL,'5'
                             JE   BILL_JMP
                             JMP  MENU5_INVALID

    DRINKOPT1:               
                             MOV  DSTOTAL,10
                             MOV  DRECORD,1
                             MOV  AH,09H
                             LEA  DX,D1MSG
                             INT  21H
                             JMP  BILL_JMP

    DRINKOPT2:               
                             MOV  DSTOTAL,15
                             MOV  DRECORD,2
                             MOV  AH,09H
                             LEA  DX,D2MSG
                             INT  21H
                             JMP  BILL_JMP

    DRINKOPT3:               
                             MOV  DSTOTAL,15
                             MOV  DRECORD,3
                             MOV  AH,09H
                             LEA  DX,D3MSG
                             INT  21H
                             JMP  BILL_JMP

    DRINKOPT4:               
                             MOV  DSTOTAL,20
                             MOV  DRECORD,4
                             MOV  AH,09H
                             LEA  DX,D4MSG
                             INT  21H
                             JMP  BILL_JMP

    MENU5_INVALID:           
                             MOV  AH,9
                             LEA  DX, INVALIDOPTION5
                             INT  21H
                             JMP  MENU5_JMP
    ;SUB TOTAL DISPLAY HERE -------------------------------------------------
    BILL_JMP:                
                             MOV  AH, 06h                     ; Scroll up function
                             XOR  AL, AL                      ; Clear entire screen
                             XOR  CX, CX                      ; Upper left corner CH=row, CL=column
                             MOV  DX, 184FH                   ; lower right corner DH=row, DL=column
                             MOV  BH, 4eh                     ; YellowOnBlue
                             int  10h
                             MOV  AH,9
                             LEA  DX,BILLMSG
                             INT  21H
                             MOV  AL,TRECORD
                             CMP  AL,1
                             JE   TPRINT1_JMP
                             CMP  AL,2
                             JE   TPRINT2_JMP
                             CMP  AL,3
                             JE   TPRINT3_JMP
                             CMP  AL,4
                             JE   TPRINT4_JMP
                             CMP  AL,5
                             JE   TPRINT5_JMPJMP

    TPRINT1_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX, TPRINT1
                             INT  21H
                             JMP  CPRINT_JMP

    TPRINT5_JMPJMP:          
                             JMP  TPRINT5_JMP
    TPRINT2_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX, TPRINT2
                             INT  21H
                             JMP  CPRINT_JMP

    TPRINT3_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX, TPRINT3
                             INT  21H
                             JMP  CPRINT_JMP

    TPRINT4_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX, TPRINT4
                             INT  21H
                             JMP  CPRINT_JMP

    TPRINT5_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX, TPRINT5
                             INT  21H
                             CMP  TTRECORD,1
                             JE   TTPRINT1_JMP
                             CMP  TTRECORD,0
                             JE   TTPRINT0_JMP

    TTPRINT1_JMP:            
                             MOV  AH,9
                             LEA  DX, TTPRINT1
                             INT  21H
                             JMP  CPRINT_JMP

    TTPRINT0_JMP:            
                             MOV  AH,9
                             LEA  DX, TTPRINT0
                             INT  21H

    CPRINT_JMP:              
                             CMP  CRECORD,1
                             JE   CPRINT1_JMP
                             CMP  CRECORD,2
                             JE   CPRINT2_JMP
                             CMP  CRECORD,3
                             JE   CPRINT3_JMP
                             CMP  CRECORD,4
                             JE   CPRINT4_JMP
                             JNE  FPRINT_JMPJMP

    CPRINT1_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,CPRINT1
                             INT  21H
                             JMP  QPRINT_JMP
    CPRINT2_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,CPRINT2
                             INT  21H
                             JMP  QPRINT_JMP

    FPRINT_JMPJMP:           
                             JMP  FPRINT_JMP
    CPRINT3_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,CPRINT3
                             INT  21H
                             JMP  QPRINT_JMP
    CPRINT4_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,CPRINT4
                             INT  21H
                             JMP  QPRINT_JMP

    QPRINT_JMP:              
                             CMP  CQRECORD,1
                             JE   CQPRINT1_JMP
                             CMP  CQRECORD,2
                             JE   CQPRINT2_JMP
                             CMP  CQRECORD,3
                             JE   CQPRINT3_JMP
                             CMP  CQRECORD,4
                             JE   CQPRINT4_JMP
                             CMP  CQRECORD,5
                             JE   CQPRINT5_JMP
                             CMP  CQRECORD,6
                             JE   CQPRINT6_JMP
                             CMP  CQRECORD,7
                             JE   CQPRINT7_JMP
                             CMP  CQRECORD,8
                             JE   CQPRINT8_JMP
                             CMP  CQRECORD,9
                             JE   CQPRINT9_JMP

    CQPRINT1_JMP:            
                             MOV  AH,9
                             LEA  DX,CQPRINT1
                             INT  21H
                             JMP  FPRINT_JMP

    CQPRINT2_JMP:            
                             MOV  AH,9
                             LEA  DX,CQPRINT2
                             INT  21H
                             JMP  FPRINT_JMP

    CQPRINT3_JMP:            
                             MOV  AH,9
                             LEA  DX,CQPRINT3
                             INT  21H
                             JMP  FPRINT_JMP

    CQPRINT4_JMP:            
                             MOV  AH,9
                             LEA  DX,CQPRINT4
                             INT  21H
                             JMP  FPRINT_JMP

    CQPRINT5_JMP:            
                             MOV  AH,9
                             LEA  DX,CQPRINT5
                             INT  21H
                             JMP  FPRINT_JMP

    CQPRINT6_JMP:            
                             MOV  AH,9
                             LEA  DX,CQPRINT6
                             INT  21H
                             JMP  FPRINT_JMP

    CQPRINT7_JMP:            
                             MOV  AH,9
                             LEA  DX,CQPRINT7
                             INT  21H
                             JMP  FPRINT_JMP

    CQPRINT8_JMP:            
                             MOV  AH,9
                             LEA  DX,CQPRINT8
                             INT  21H
                             JMP  FPRINT_JMP

    CQPRINT9_JMP:            
                             MOV  AH,9
                             LEA  DX,CQPRINT9
                             INT  21H
                             JMP  FPRINT_JMP

    FPRINT_JMP:              
                             CMP  FRECORD,1
                             JE   FPRINT1_JMP
                             CMP  FRECORD,2
                             JE   FPRINT2_JMP
                             CMP  FRECORD,3
                             JE   FPRINT3_JMP
                             CMP  FRECORD,4
                             JE   FPRINT4_JMP
                             JNE  DPRINT_JMPJMP

    FPRINT1_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,FPRINT1
                             INT  21H
                             JMP  DPRINT_JMP
    FPRINT2_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,FPRINT2
                             INT  21H
                             JMP  DPRINT_JMP

    DPRINT_JMPJMP:           
                             JMP  DPRINT_JMP
    FPRINT3_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,FPRINT3
                             INT  21H
                             JMP  DPRINT_JMP
    FPRINT4_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,FPRINT4
                             INT  21H
                             JMP  DPRINT_JMP

    DPRINT_JMP:              
                             CMP  DRECORD,1
                             JE   DPRINT1_JMP
                             CMP  DRECORD,2
                             JE   DPRINT2_JMP
                             CMP  DRECORD,3
                             JE   DPRINT3_JMP
                             CMP  DRECORD,4
                             JE   DPRINT4_JMP
                             JNE  TOTAL_JMPJMP

    DPRINT1_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,DPRINT1
                             INT  21H
                             JMP  TOTAL_JMP

    TOTAL_JMPJMP:            
                             JMP  TOTAL_JMP
    DPRINT2_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,DPRINT2
                             INT  21H
                             JMP  TOTAL_JMP
    DPRINT3_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,DPRINT3
                             INT  21H
                             JMP  TOTAL_JMP
    DPRINT4_JMP:             
                             MOV  AH,9
                             LEA  DX,SPACE1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,BCOUNTER
                             INT  21H
                             INC  BCOUNTER
                             MOV  AH,9
                             LEA  DX,SPACE2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,DPRINT4
                             INT  21H
                             JMP  TOTAL_JMP

    ;TOTAL CALC AND DISPLAY HERE-------------------------------------------------------------

    TOTAL_JMP:               
                             MOV  AH,9
                             LEA  DX,STRDASH
                             INT  21H
                             MOV  AH,9
                             LEA  DX,TTLPRINT
                             INT  21H

                             MOV  AX,0
                             MOV  AL,TSTOTAL
                             ADD  TOTAL,AL
                             MOV  AL,CSTOTAL
                             ADD  TOTAL,AL
                             MOV  AL,FSTOTAL
                             ADD  TOTAL,AL
                             MOV  AL,DSTOTAL
                             ADD  TOTAL,AL



    ;discount indicate here
                             MOV  AX,0
                             MOV  AL, TOTAL                   ; Load TOTAL into AX
                             DIV  TEN
    
    ; Check if quotient (AX) is greater than or equal to 1 (decimal comparison)
                             CMP  AL, 10
                             JL   DIGIT2_JMP                  ; Jump if quotient is less than 10
                             JGE  DIGIT3_JMP                  ; Jump if quotient is greater than or equal to 10


    DIGIT2_JMP:              
                             MOV  AX,0
                             MOV  AL,TOTAL
                             DIV  TEN
                             MOV  D2,AL
                             MOV  D1,AH
                             ADD  D2,30H
                             ADD  D1,30H
                             MOV  AH,2
                             MOV  DL,D2
                             INT  21H
                             MOV  AH,2
                             MOV  DL,D1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,'.'
                             INT  21H
                             MOV  AH,2
                             MOV  DL,'0'
                             INT  21H
                             MOV  AH,2
                             MOV  DL,'0'
                             INT  21H
                             MOV  AH,2
                             MOV  DL,SPACE3
                             INT  21H
                             SUB  D2,30H
                             SUB  D1,30H
                             MOV  AH,9
                             LEA  DX,EQLPRINT
                             INT  21H
                             JMP  NODISCOUNT_JMP
 
    DIGIT3_JMP:              
                             MOV  AX,0
                             MOV  AL,TOTAL
                             DIV  TEN
                             MOV  D2,AL
                             MOV  D1,AH
                             MOV  AX,0
                             MOV  AL,D2
                             DIV  TEN
                             MOV  D3,AL
                             MOV  D2,AH
                             ADD  D3,30H
                             ADD  D2,30H
                             ADD  D1,30H
                             MOV  AH,2
                             MOV  DL,D3
                             INT  21H
                             MOV  AH,2
                             MOV  DL,D2
                             INT  21H
                             MOV  AH,2
                             MOV  DL,D1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,'.'
                             INT  21H
                             MOV  AH,2
                             MOV  DL,'0'
                             INT  21H
                             MOV  AH,2
                             MOV  DL,'0'
                             INT  21H
                             MOV  AH,2
                             MOV  DL,SPACE3
                             INT  21H
                             SUB  D3,30H
                             SUB  D2,30H
                             SUB  D1,30H
                             MOV  AH,9
                             LEA  DX,EQLPRINT
                             INT  21H
                             JMP  DISCOUNT_JMP

    ;DISCOUNT INDICATED, DISCOUNT DISPLAY AND CALC HERE-------------------------------

    NODISCOUNT_JMP:          
                             MOV  AL,TOTAL
                             MOV  HOLDTOTAL,AL
                             JMP  NDSCDISPLAY

    DISCOUNT_JMP:            
                             MOV  AL, D1
                             CMP  AL, 0
                             JE   NSEN_JMP
                             MOV  DN1,5
                             SUB  D1,1

    NSEN_JMP:                
                             MOV  AL,D1
                             CMP  AL,D2
                             JA   ACAL_JMP
                             JB   BCAL_JMP
                             JE   ECAL_JMP


    ACAL_JMP:                
                             SUB  AL,D2
                             MOV  D1,AL
                             JMP  INDICATOR_NEXT

    BCAL_JMP:                
                             ADD  AL,10
                             SUB  AL,D2
                             SUB  D2,1
                             MOV  D1,AL
                             JMP  INDICATOR_NEXT

    ECAL_JMP:                
                             SUB  AL,D2
                             MOV  D1,AL

    INDICATOR_NEXT:          
                             MOV  AL,D2
                             CMP  AL,D3
                             JA   AACAL_JMP
                             JB   BBCAL_JMP
                             JE   EECAL_JMP

    AACAL_JMP:               
                             SUB  AL,D3
                             MOV  D2,AL
                             JMP  DSCDISPLAY
    BBCAL_JMP:               
                             ADD  AL,10
                             SUB  AL,D3
                             SUB  D3,1
                             MOV  D2,AL
                             JMP  DSCDISPLAY

    EECAL_JMP:               
                             SUB  AL,D3
                             MOV  D2,AL
                             JMP  DSCDISPLAY

    NDSCDISPLAY:             
                             MOV  AH,9
                             LEA  DX,NDSCPRINT
                             INT  21H
                             ADD  D1,30H
                             ADD  D2,30H
                             ADD  D3,30H
                             ADD  DN1,30H
                             ADD  DN2,30H
                             JMP  NDSCPLAY_JMP

    DSCDISPLAY:              
                             MOV  AH,9
                             LEA  DX,DSCPRINT
                             INT  21H

                             ADD  D1,30H
                             ADD  D2,30H
                             ADD  D3,30H
                             ADD  DN1,30H
                             ADD  DN2,30H

                             MOV  AL,D3
                             CMP  AL,'0'
                             JE   NDSCPLAY_JMP
                             MOV  AH,2
                             MOV  DL,D3
                             INT  21H
                             JMP  FINALDSCPLAY

    NDSCPLAY_JMP:            
                             MOV  AH,9
                             LEA  DX,SPACE
                             INT  21H
    FINALDSCPLAY:            
                             MOV  AH,2
                             MOV  DL,D2
                             INT  21H
                             MOV  AH,2
                             MOV  DL,D1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,'.'
                             INT  21H
                             MOV  AH,2
                             MOV  DL,DN1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,DN2
                             INT  21H
                             MOV  AH,2
                             MOV  DL,SPACE3
                             INT  21H
                             SUB  D1,30H
                             SUB  D2,30H
                             SUB  D3,30H
                             SUB  DN1,30H
                             SUB  DN2,30H
    ;-----------------------TAX DISPLAY AND CALC HERE---------------------------------

    TAX_COUNTER:             
                             MOV  AL,DN1
                             CMP  AL,0
                             JE   TC_CONT1
                             MOV  TDN2,0
    TC_CONT1:                
                             MOV  AX,0
                             MOV  AL,D1
                             MUL  SIX
                             ADD  TDN2,AL
                             MOV  AX,0
                             MOV  AL,TDN2
                             CMP  AL,TEN
                             JB   TC_CONT2
                             DIV  TEN
                             MOV  TDN2,AH
                             MOV  TDN1,AL
    TC_CONT2:                
                             MOV  AX,0
                             MOV  AL,D2
                             MUL  SIX
                             ADD  TDN1,AL
                             MOV  AX,0
                             MOV  AL,TDN1
                             CMP  AL,TEN
                             JB   TC_CONT3
                             DIV  TEN
                             MOV  TDN1,AH
                             MOV  TD1,AL
    TC_CONT3:                
                             MOV  AX,0
                             MOV  AL,D3
                             MUL  SIX
                             ADD  TD1,AL
                             MOV  AX,0
                             MOV  AL,TD1
                             CMP  AL,TEN
                             JB   TC_CONT4
                             DIV  TEN
                             MOV  TD1,AH
                             MOV  TD2,AL

    TC_CONT4:                
    ;-DISPLAY OF TAX MSG
                             ADD  TD1,30H
                             ADD  TD2,30H
                             ADD  TDN1,30H
                             ADD  TDN2,30H

                             MOV  AH,9
                             LEA  DX,TAXPRINT
                             INT  21H
                             MOV  AL,TD2
                             CMP  AL,'0'
                             JE   TAXPRINTER_CONT
                             MOV  AH,2
                             MOV  DL,TD2
                             INT  21H
    TAXPRINTER_CONT:         
                             MOV  AH,2
                             MOV  DL,TD1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,'.'
                             INT  21H
                             MOV  AH,2
                             MOV  DL,TDN1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,TDN2
                             INT  21H
                             MOV  AH,2
                             MOV  DL,SPACE3
                             INT  21H

                             SUB  TD1,30H
                             SUB  TD2,30H
                             SUB  TDN1,30H
                             SUB  TDN2,30H

    ;-------------------grand total calculation AND DISPLAY hereee -----------------
                             MOV  AL, DN2
                             ADD  AL, TDN2
                             MOV  DN2,AL
                             MOV  AL, DN1
                             ADD  AL, TDN1
                             MOV  DN1,AL
                             MOV  AL, D1
                             ADD  AL, TD1
                             MOV  D1,AL
                             MOV  AL, D2
                             ADD  AL, TD2
                             MOV  D2,AL

                             MOV  AX,0
                             MOV  AL,DN2
                             DIV  TEN
                             MOV  DN2,AH
                             ADD  DN1,AL

                             MOV  AX,0
                             MOV  AL,DN1
                             DIV  TEN
                             MOV  DN1,AH
                             ADD  D1,AL

                             MOV  AX,0
                             MOV  AL,D1
                             DIV  TEN
                             MOV  D1,AH
                             ADD  D2,AL

                             MOV  AX,0
                             MOV  AL,D2
                             DIV  TEN
                             MOV  D2,AH
                             ADD  D3,AL

    GDTPRINT_JMP:            
                             MOV  AH,9
                             LEA  DX,STRDASH
                             INT  21H
                             MOV  AH,9
                             LEA  DX,GDTPRINT
                             INT  21H

                             ADD  D1,30H
                             ADD  D2,30H
                             ADD  D3,30H
                             ADD  DN1,30H
                             ADD  DN2,30H

                             MOV  AL,D3
                             CMP  AL,'0'
                             JE   GDTPRINT_CONT
                             MOV  AH,2
                             MOV  DL,D3
                             INT  21H
    GDTPRINT_CONT:           
                             MOV  AH,2
                             MOV  DL,D2
                             INT  21H
                             MOV  AH,2
                             MOV  DL,D1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,'.'
                             INT  21H
                             MOV  AH,2
                             MOV  DL,DN1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,DN2
                             INT  21H
                             MOV  AH,9
                             LEA  DX,SPACE3
                             INT  21H
                             MOV  AH,9
                             LEA  DX,EQLPRINT
                             INT  21H
    ;LOYALTY POINT DISPLAY HERE --------------------------------------------------------

                             MOV  AH,9
                             LEA  DX,LYTPRINT
                             INT  21H

                             MOV  AL,D3
                             CMP  AL,'0'
                             JE   SPCPRINT_CONT
                             MOV  AH,2
                             MOV  DL,D3
                             INT  21H
                             JMP  LYTPRINT_CONT
    SPCPRINT_CONT:           
                             MOV  AH,9
                             LEA  DX,SPACE
                             INT  21H
    LYTPRINT_CONT:           
                             MOV  AH,2
                             MOV  DL,D2
                             INT  21H


                             MOV  AH,9
                             LEA  DX,LYTPRINT1
                             INT  21H


                             MOV  AH,9
                             LEA  DX,SPACE3
                             INT  21H


                             MOV  AH,9
                             LEA  DX,STRDASH
                             INT  21H
    ;D3-DN2 ALR IS ASCII


    PYMT_INPUT1:             
                             MOV  AH, 9
                             LEA  DX, PYMTINPUTMSG
                             INT  21H


    PYMT_INPUT:              
                             MOV  AH, 0AH
                             LEA  DX, PYMT
                             INT  21H


    ; Check if the 5th character (PYMTDATA[4]) is a period ('.')
                             MOV  AL, PYMTDATA[4]
                             CMP  AL, '.'
                             JNE  INVALIDPYMTMSG_JMP          ; Jump to the error message if it's not a period


                             MOV  SI, 0
                             MOV  DI, 5


    CHKN:                    
                             CMP  SI, 4
                             JE   PYMT_CONT
                             MOV  AL, PYMTDATA[SI]


    ; Check if it's a valid digit (0-9) or a period (.)
                             CMP  AL, '0'
                             JB   INVALIDPYMTMSG_JMP          ; Jump to the error message if not a digit


                             CMP  AL, '9'
                             JBE  PYMT_CONT1                  ; Continue if it's a digit


    ; If it's neither a valid digit nor a period, jump to the error message
    INVALIDPYMTMSG_JMP:      
                             MOV  AH, 9
                             LEA  DX, INVALIDPYMTMSG1
                             INT  21H
                             JMP  PYMT_INPUT1


    PYMT_CONT1:              
                             INC  SI
                             JMP  CHKN


    PYMT_CONT:               
                             CMP  DI, 7
                             JE   PYMTOUTPUT_JMP


                             MOV  AL, PYMTDATA[DI]


    ; Check if it's a valid digit (0-9)
                             CMP  AL, '0'
                             JB   INVALIDPYMTMSG_CONT         ; Jump to the error message if not a digit


                             CMP  AL, '9'
                             JBE  PYMT_CONT2                  ; Continue if it's a digit
                             JMP  INVALIDPYMTMSG_JMP
    ; If it's not a valid digit, jump to the error message
    INVALIDPYMTMSG_CONT:     
                             MOV  AH, 9
                             LEA  DX, INVALIDPYMTMSG2
                             INT  21H
                             JMP  PYMT_INPUT1


    PYMT_CONT2:              
                             INC  DI
                             JMP  PYMT_CONT


    INVALIDPYMTMSG_JMPJMP:   
                             JMP  INVALIDPYMTMSG_CONT
    PYMTOUTPUT_JMP:          
                             MOV  AL,PYMTDATA[0]
                             MOV  PD4,AL
                             MOV  AL,PYMTDATA[1]
                             MOV  PD3,AL
                             MOV  AL,PYMTDATA[2]
                             MOV  PD2,AL
                             MOV  AL,PYMTDATA[3]
                             MOV  PD1,AL
                             MOV  AL,PYMTDATA[5]
                             MOV  PDN1,AL
                             MOV  AL,PYMTDATA[6]
                             MOV  PDN2,AL
                             JMP  PYMT_VALIDATE
    INVALIDPYMTMSG_JMPJMPJMP:
                             JMP  INVALIDPYMTMSG_JMPJMP
    ;VALIDATE FOR NEW INPUT GREATER THAN GDT
    ;BOTH IS ASCII
    PYMT_VALIDATE:           
                             SUB  PD4,30H
                             SUB  PD3,30H
                             SUB  PD2,30H
                             SUB  PD1,30H
                             SUB  PDN1,30H
                             SUB  PDN2,30H
                             SUB  D3,30H
                             SUB  D2,30H
                             SUB  D1,30H
                             SUB  DN1,30H
                             SUB  DN2,30H


                             MOV  AL,PD4
                             CMP  AL,0
                             JA   PYMT_VALIDATE_SUCCESS


                             MOV  AX,0
                             MOV  AL,PD3
                             MUL  TEN
                             MOV  HOLDDATAA,AL
                             MOV  AL,PD2
                             ADD  HOLDDATAA,AL


                             MOV  AX,0
                             MOV  AL,D3
                             MUL  TEN
                             MOV  HOLDDATAAA,AL
                             MOV  AL,D2
                             ADD  HOLDDATAAA,AL


                             MOV  AL, HOLDDATAA
                             CMP  AL,HOLDDATAAA
                             JA   PYMT_VALIDATE_SUCCESS


                             MOV  AX,0
                             MOV  AL,PD1
                             MUL  TEN
                             MOV  HOLDDATAA,AL
                             MOV  AL,PDN1
                             ADD  HOLDDATAA,AL


                             MOV  AX,0
                             MOV  AL,D1
                             MUL  TEN
                             MOV  HOLDDATAAA,AL
                             MOV  AL,DN1
                             ADD  HOLDDATAAA,AL


                             MOV  AL,HOLDDATAA
                             CMP  AL,HOLDDATAAA
                             JA   PYMT_VALIDATE_SUCCESS


                             MOV  AL,PDN2
                             CMP  AL,DN2
                             JAE  PYMT_VALIDATE_SUCCESS
                             JMP  INVALIDPYMTMSG_JMPJMPJMP


    ;CONVERT ALL BACK TO NUMERICAL VALUE FOR FUTURE CALC
    PYMT_VALIDATE_SUCCESS:   
                           
                             MOV  AL,PDN2
                             CMP  AL,DN2
                             JA   AGDCALC
                             JB   BGDCALC
                             JE   EGDCALC_JMP


    AGDCALC:                 
                             SUB  AL,DN2
                             MOV  PDN2,AL
                             JMP  IND1_JMP


    BGDCALC:                 
                             MOV  HOLDDATA,AL
                             MOV  AL,PDN1
                             CMP  AL,0                        ;CHECK DN1 IS 0 OR NOT
                             JA   BGDCALC_CONT                ;IF NOT ZERO, BACK TO NORMAL
                             MOV  AL,PD1
                             CMP  AL,0
                             JE   BGDCALC_CONT1               ; CHECK D1 IF IS ZERO, JUMP
                             SUB  PD1,1
                             MOV  PDN1,10
                             JMP  BGDCALC_CONT


    BGDCALC_CONT1:                                            ; CHECK D2 IS ZERO
                             MOV  AL,PD2
                             CMP  AL,0
                             JE   BGDCALC_CONT2               ;CHECK D2 EQUAL TO 0
                             MOV  PD1,9
                             MOV  PDN1,10
                             SUB  PD2,1
                             JMP  BGDCALC_CONT


    BGDCALC_CONT2:           
                             MOV  AL,PD3
                             CMP  AL,0
                             JE   BGDCALC_CONT3
                             MOV  PD1,9
                             MOV  PD2,9
                             MOV  PDN1,10
                             SUB  PD3,1
                             JMP  BGDCALC_CONT
    EGDCALC_JMP:             
                             JMP  EGDCALC
    BGDCALC_CONT3:           
                             MOV  PD1,9
                             MOV  PD2,9
                             MOV  PD3,9
                             MOV  PDN1,10
                             SUB  PD4,1


    BGDCALC_CONT:            
                             MOV  AL,HOLDDATA
                             ADD  AL,10
                             SUB  DN1,1
                             SUB  AL,DN2
                             MOV  PDN2,AL
                             JMP  IND1_JMP


    EGDCALC:                 
                             MOV  PDN2,0


    IND1_JMP:                
                             MOV  AL,PDN1
                             CMP  AL,DN1
                             JA   AAGDCALC
                             JB   BBGDCALC
                             JE   EEGDCALC


    AAGDCALC:                
                             SUB  AL,DN1
                             MOV  PDN1,AL
                             JMP  IND2_JMP


    BBGDCALC:                
                             MOV  HOLDDATA,AL
                             MOV  AL,PD1
                             CMP  AL,0
                             JA   BBGDCALC_CONT               ;D1 CHCKED IS NOT 0
                             MOV  AL,PD2
                             CMP  AL,0
                             JE   BBGDCALC_CONT1
                             SUB  PD2,1
                             MOV  PD1,10
                             JMP  BBGDCALC_CONT


    BBGDCALC_CONT1:                                           ;CHCKED D2 IS ZERO
                             MOV  AL,PD3
                             CMP  AL,0
                             JE   BBGDCALC_CONT2
                             MOV  PD1,10
                             MOV  PD2,9
                             SUB  PD3,1
                             JMP  BBGDCALC_CONT


    BBGDCALC_CONT2:          
                             MOV  PD1,10
                             MOV  PD2,9
                             MOV  PD3,9
                             SUB  PD4,1


    BBGDCALC_CONT:           
                             MOV  AL,HOLDDATA
                             ADD  AL,10
                             SUB  PD1,1
                             SUB  AL,DN1
                             MOV  PDN1,AL
                             JMP  IND2_JMP


    EEGDCALC:                
                             MOV  PDN1,0


    IND2_JMP:                
                             MOV  AL,PD1
                             CMP  AL,D1
                             JA   AAAGDCALC
                             JB   BBBGDCALC
                             JE   EEEGDCALC


    AAAGDCALC:               
                             SUB  AL,D1
                             MOV  PD1,AL
                             JMP  IND3_JMP


    BBBGDCALC:               
                             MOV  HOLDDATA,AL
                             MOV  AL,PD2
                             CMP  AL,0                        ;CHECK D2 IS ZERO OR NOT
                             JA   BBBGDCALC_CONT
                             MOV  AL,PD3
                             CMP  AL,0
                             JE   BBBGDCALC_CONT1
                             MOV  PD2,10
                             SUB  PD3,1
                             JMP  BBBGDCALC_CONT


    BBBGDCALC_CONT1:         
                             MOV  PD2,10
                             MOV  PD3,9
                             SUB  PD4,1


    BBBGDCALC_CONT:          
                             MOV  AL,HOLDDATA
                             ADD  AL,10
                             SUB  PD2,1
                             SUB  AL,D1
                             MOV  PD1,AL
                             JMP  IND3_JMP


    EEEGDCALC:               
                             MOV  PD1,0


    IND3_JMP:                
                             MOV  AL,PD2
                             CMP  AL,D2
                             JA   AAAAGDCALC
                             JB   BBBBGDCALC
                             JE   EEEEGDCALC


    AAAAGDCALC:              
                             SUB  AL,D2
                             MOV  PD2,AL
                             JMP  IND4_JMP


    BBBBGDCALC:              
                             MOV  HOLDDATA,AL
                             MOV  AL,PD3
                             CMP  AL,0
                             JA   BBBBGDCALC_CONT
                             MOV  PD3,10
                             SUB  PD4,1


    BBBBGDCALC_CONT:         
                             MOV  AL,HOLDDATA
                             ADD  AL,10
                             SUB  PD3,1
                             SUB  AL,D2
                             MOV  PD2,AL
                             JMP  IND4_JMP


    EEEEGDCALC:              
                             MOV  PD2,0
 
    IND4_JMP:                
                             MOV  AL,PD3
                             CMP  AL,D3
                             JA   AAAAAGDCALC
                             JB   BBBBBGDCALC
                             JE   EEEEEGDCALC


    AAAAAGDCALC:             
                             SUB  AL,D3
                             MOV  PD3,AL
                             JMP  PYMTPRINT_JMP


    BBBBBGDCALC:             
                             ADD  AL,10
                             SUB  PD4,1
                             SUB  AL,D3
                             MOV  PD3,AL
                             JMP  PYMTPRINT_JMP


    EEEEEGDCALC:             
                             MOV  PD3,0


    PYMTPRINT_JMP:           
                             ADD  PD4,30H
                             ADD  PD3,30H
                             ADD  PD2,30H
                             ADD  PD1,30H
                             ADD  PDN1,30H
                             ADD  PDN2,30H


                             MOV  AH,9
                             LEA  DX,PYMTOUTPUTMSG
                             INT  21H


                             MOV  AL,PD4
                             CMP  AL,'0'
                             JE   PYMTPRINT_JMPCONT1
                             MOV  AH,2
                             MOV  DL,PD4
                             INT  21H
                             JMP  PYMTPRINT_JMPCONT3
    PYMTPRINT_JMPCONT1:      
                             MOV  AL,PD3
                             CMP  AL,'0'
                             JE   PYMTPRINT_JMPCONT2
    PYMTPRINT_JMPCONT3:      
                             MOV  AH,2
                             MOV  DL,PD3
                             INT  21H
    PYMTPRINT_JMPCONT2:      
                             MOV  AH,2
                             MOV  DL,PD2
                             INT  21H
                             MOV  AH,2
                             MOV  DL,PD1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,'.'
                             INT  21H
                             MOV  AH,2
                             MOV  DL,PDN1
                             INT  21H
                             MOV  AH,2
                             MOV  DL,PDN2
                             INT  21H


                             MOV  AH,9
                             LEA  DX,PYMTTHANKMSG
                             INT  21H


    EXIT:                    
                             mov  ah,4ch                      ;console return to dos
                             int  21h
       
                             ret


main endp                                                     ;main end
   
end main







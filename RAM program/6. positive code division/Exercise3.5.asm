.DATA  0x0000
   a:   .word 7
.TEXT  0x0000
start:                                
	lui   $1,0XFFFF				
    ori   $28,$1,0XF000	    
read:	
    lw   $1,0XC70($28)		
	and  $s1,$s1,$zero             
	ori  $s1,$zero,7              
	and  $s3,$s3,$zero            
	and  $s4,$s4,$zero             
	andi $s3,$1,0XFF00     
	srl  $s3,$s3,8
	andi $s4,$1,0X00FF  	
	beq  $s4,$zero,WRONG          
	ori  $s8,$zero,0		        
                                        
	ori  $s5,$zero,128          
      and  $s6,$s3,$s5           
	srl  $s6,$s6,7               
	j JUDGE1
WRONG:
    	ori $s8,$zero,0X00FF
    	j exit
JUDGE1:
    	bne  $s6,$zero,CHANGE1
JUDGE2:
    	and $s6,$s4,$s5           
    	srl $s6,$s6,7               
    	j CHANGE2                                     
CHANGE1:
    	and $t1,$t1,$zero         
    	ori $t1,$t1,0X007F        
    	and $s3,$s3,$t1              
    	j JUDGE2                       
CHANGE2:
    	and $t1,$t1,$zero         
    	ori $t1,$t1,0X007F        
    	and $s4,$s4,$t1              
    	ori $t2,$t2,0X0100        
    	nor $s7,$s4,$s4           
    	andi $s7,$s7,0X00FF
    	addi $s7,$s7,1             
beg:
        add $s3,$s3,$s7           
        and $s6,$s3,$s5           
        srl $s6,$s6,7               
        beq $s6,$zero,MINUS    
        j PLUS
MINUS:
    	beq $s1,$zero,exit        
        ori $s8,$s8,1               
        sll $s8,$s8,1                 
        sll $s3,$s3,1                
        add $s3,$s3,$s7           
    	
    	ori $t1,$zero,1
    	sub $s1,$s1,$t1            
    	
    	and $s6,$s3,$s5           
        srl $s6,$s6,7               
        beq $s6,$zero,MINUS     
        j PLUS
PLUS:
    	beq $s1,$zero,exit       
    	sll $s8,$s8,1                 
    	sll $s3,$s3,1                 
    	add $s3,$s3,$s4           
    	
    	ori $t1,$zero,1
    	sub $s1,$s1,$t1            
    	
    	and $s6,$s3,$s5           
        srl $s6,$s6,7               
        beq $s6,$zero,MINUS     
        j PLUS
exit:
        sw   $s8,0X0C60($28)	
        j read


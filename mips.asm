.data

ack: .asciiz   "Programa de Raiz Quadrada - Newton-Raphson"

nomes: .asciiz "Desenvolvedores: <Luana Sostisso, Eduarda Fuchs, Fernanda Franschescini, Fernando Neto>"

espaco: .asciiz "=============================================="

mnString: .asciiz "Digite os parametros x e i para calcular sqrt_nr(x, i) ou -1 para abortar a execuçao \n"

newline: .asciiz "\n"

resposta1: .asciiz "sqrt("	
resposta2: .asciiz ", "
resposta3: .asciiz ") = "


impFim: .asciiz "Valor negativo digitado! Programa encerrado!"

.text
.globl main
main:
	li $v0, 4
	la $a0, ack
	syscall
	la $a0, newline
	syscall
	la $a0, espaco
	syscall
	la $a0, newline
	syscall
	li $v0, 4
	la $a0, nomes
	syscall
	la $a0, newline
	syscall
	li $v0, 4
	la $a0, espaco
	syscall
	la $a0, newline
	syscall
	move $t0, $zero  #x
	move $t1, $zero  #i
	li $t5, 1

loop:
  	li $v0, 4
  	la $a0, mnString
  	syscall

   	li $v0, 5
   	syscall
  	  
  	move $t0, $v0  #x
    
   	blt $t0, $zero, end_loop
   	 			
   	move 	$s1, $v0
    				
    	li $v0, 5
   	syscall
    
  	move $t1, $v0 #i
    
   	blt $t1, $zero, end_loop
   	 			
   	move 	$s2, $v0 
   	 			
   	move	$a0, $s1
	move	$a1, $s2
				
				
				
	jal	sqrt_nr
	move	$s0, $v0
				
	li	$v0, 4
	la	$a0, resposta1
	syscall
	move $a0, $t0
	li	$v0, 1
	syscall
	li	$v0, 4
	la	$a0, resposta2
	syscall
	move $a0, $t1
	li	$v0, 1
	syscall
	li	$v0, 4
	la	$a0, resposta3
	syscall
	li	$v0, 1
	move	$a0, $s0
	syscall
				
	li	$v0, 4
	la $a0, newline
	syscall
	
	j loop
	
sqrt_nr:        
        addi	$sp, $sp, -16
        sw	$ra, 12($sp)
	sw	$s0, 8($sp)
        sw	$s1, 4($sp)
        sw	$s2, 0($sp)
        
	move	$s0, $a0 #$s0 -> x
	move	$s1, $a1 #$s1 -> i
	move	$s2, $0 #$s2 -> retorno
		
	bne	$s1, 0, caso1 #if($s0(m)!=0)-> caso1
	addi	$s2, $zero, 1 	#return 1
	j	fim
	
caso1: # else if(i>0){
	blt	$s1, 0, caso2 #if($s0<=0) -> caso2
	move	$a0, $s0 # x
	addi	$a1, $s1, -1 # i-1
	jal	sqrt_nr # sqrt_nr(x,i-1)
	move	$a3, $v0 # salva o retorno em $a3
	
	div 	$s5, $a0, $a3 # x / retorno da chamada 
	
	add	$s6, $s5, $a3 #soma (𝑠𝑞𝑟𝑡_𝑛𝑟(x, i-1) e (x/𝑠𝑞𝑟𝑡_𝑛𝑟(x, i-1)))
	div	$s5, $s6, 2 # $s6/2

	add	$s2, $zero, $s5
	j	fim

	
caso2: 
	addi 	$s2, $zero, -1 #return -1
	j	fim

fim:
	move	$v0, $s2
	lw  	$ra, 12($sp)
        lw	$s0, 8($sp)
        lw	$s1, 4($sp)
        lw	$s2, 0($sp)
           
        addi	$sp, $sp, 16
        jr      $ra
        
    				
end_loop:
	li $v0, 4
	la $a0, newline
	syscall
	la $a0, impFim
	syscall
	li $v0, 10
	syscall




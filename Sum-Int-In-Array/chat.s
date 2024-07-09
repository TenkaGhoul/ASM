.global sum_in_array

.section .text

sum_in_array:
    xor %rax, %rax         # RAX = 0, pour stocker la somme
    push %r12              # Sauvegarder R12
    
    movq %rdi, %r12        # R12 = adresse du tableau

    .Loop:
        test %rsi, %rsi    # Vérifier si la taille est 0
        jz .End            # Si zéro, sauter à End
        
        movl (%r12), %ebx  # Charger l'élément suivant dans EBX
        addl %ebx, %eax    # Ajouter l'élément à la somme
        
        addq $4, %r12      # Avancer le pointeur de 4 octets
        dec %rsi           # Décrémenter la taille
        
        jmp .Loop

    .End:
        pop %r12           # Restaurer R12
        ret                # Retourner


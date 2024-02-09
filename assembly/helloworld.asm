.x64 ; Essa linha especifica a arquitetura do processador que o código 
     ; assembly está destinado a ser executado. 

.model flat, stdcall ; Essa linha define o modelo de memória e a convenção 
                     ; de chamada para o código assembly. O modelo de memória
                     ; flat indica que o código não está usando segmentação 
                     ; de memória. A convenção de chamada stdcall especifica 
                     ; que os argumentos são passados na pilha e que a função 
                     ;chamada é responsável por limpar a pilha após a chamada.

option casemap: none ; Essa linha especifica que o código assembly não diferencia 
                     ; maiúsculas de minúsculas.

include \masm32\include\kernel32.inc ; Essa linha inclui o arquivo kernel32.inc, 
                                     ; que contém as definições de função para a 
                                     ; biblioteca de sistema do Windows.

include \masm32\include\masm32.inc ; Essa linha inclui o arquivo masm32.inc, que 
                                   ; contém as definições de função para a biblioteca 
                                   ; de sistema do MASM32.

includelib \masm32\lib\kernel32.lib ; Essa linha inclui o arquivo kernel32.lib, que 
                                    ; contém as definições de função para a biblioteca 
                                    ; de sistema do Windows.

includelib \masm32\lib\masm32.lib ; Essa linha inclui o arquivo masm32.lib, que contém 
                                  ; as definições de função para a biblioteca de sistema 
                                  ; do MASM32.

.data ; Essa linha indica que a seção de dados começa aqui.
    msg db "Hello, World!", 0 ; Essa linha define uma variável de dados chamada msg 
                              ; que contém a string "Hello, World!".

.code ; Essa linha indica que o código assembly começa aqui.

main: ; Essa linha define o ponto de entrada do programa.

    invoke StdOut, addr msg ; Essa linha chama a função StdOut para imprimir a string 
                            ; armazenada na variável msg na saída padrão. O operador 
                            ; invoke é usado para chamar a função e addr é usado para 
                            ; obter o endereço da variável msg.

    invoke ExitProcess, 0 ; Essa linha chama a função ExitProcess para encerrar o 
                          ; programa com um código de saída de 0.

end main ; Essa linha indica o fim do programa.
```

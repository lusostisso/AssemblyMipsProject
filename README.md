*Especificação Técnica do Trabalho:*

O grupo deve implementar uma implementação específica do método numérico conhecido 
como Newton-Raphson, mas com uma particularidade: esta versão deve ser recursiva e tem o objetivo 
específico de calcular a raiz quadrada de um número inteiro e positivo, denominado x. 

O método de Newton-Raphson, fundamentado no princípio matemático da linearização de funções, é uma 
técnica iterativa que visa encontrar as raízes de uma função por meio das aproximações sucessivas.

A essência do método recursivo é que, em vez de usar laços de repetição comuns em 
implementações iterativas, a função chama a si mesma com novos parâmetros, sendo que a cada nova 
chamada da função o número de iterações é decrementado. Isso torna o código mais compacto e 
conceitualmente simples. 

Dessa forma, a implementação recursiva do método Newton-Raphson para 
cálculo da raiz quadrada representa uma abordagem elegante e eficaz na solução de um problema 
comum de cálculo numérico.
A regra de recursividade que implementa o cálculo da raiz quadrada utilizando o método 
Newton-Raphson é a seguinte:

![image](https://github.com/user-attachments/assets/ce9bc046-0735-43e6-91dc-d41e295e00e3)

Onde x é o valor que desejamos encontrar a raiz quadrada, e i é o número de iterações que o 
método irá executar. 

Por exemplo, se executarmos a função para x = 100 e i = 3 a função retornará a 
resposta sqrt_nr(100, 3) = 14, pois não houveram iterações suficientes para que o resultado 
convergisse. 

Agora, para os valores de x = 100 e i = 5, temos: sqrt_nr(100, 5) = 10, ou seja, o resultado 
convergiu adequadamente pois √100 = 10.
Abaixo segue uma tabela que mostra a evolução do método Newton-Raphson para alguns 
valores de x e i.
![image](https://github.com/user-attachments/assets/6d22e444-cfd2-4ef4-94b8-2d2cbf494fb1)


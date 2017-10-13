
%{
#include <stdio.h>
%}


%%


([a-zA-Z0-9]+[-_.])*[a-zA-Z0-9]+@([a-zA-Z0-9]+[.])*[a-zA-Z0-9]+[-] ; {

/* teste05 também precisa levar em consideração: "Emails@Dominios podem ter lEtR@S maiusculas e minusculas."
Melhor maneira é retirando esta exceção do loop para dar match aqui e não realizar nada.
E para utilizar esse comentario aqui a partir do começo da tabulação do arquivo precisa utiliar o {}
*/

}

([a-zA-Z0-9]+[-_.])*[a-zA-Z0-9]+@([a-zA-Z0-9]+[.])*[a-zA-Z0-9]+ {
	printf( "%s\n", yytext );	

}


[\s]; // ignorar os espaços, mas acho que o token abaixo já leva em consideração, mas fica aqui para não esquecer \s espaço e \t tabulaçãoo
. ; // sempre dará match com algum digito porém não fará nada
\n ;

%%

int main() {
  yylex();
  return 0;
}

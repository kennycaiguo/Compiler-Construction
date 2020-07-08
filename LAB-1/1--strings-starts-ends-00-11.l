/* All string which start and ends with 00 or 11 in lex programming */
%option noyywrap
%{
    #include<stdio.h>
%}

%%
(00|11)[a-zA-Z0-9]*(00|11)   {printf("Valid");}
%%
int main(){
    yyin=stdin;
    yylex();
    return 0;
}

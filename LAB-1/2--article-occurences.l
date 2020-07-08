/* Counting occurances of articles 'a' 'An' 'The' in Lex programming */
%option noyywrap
%{
    #include<stdio.h>
    int occurance=0;
%}

%%
(" ")*[Aa](" ")+  {occurance++;}
(" ")*([Tt])([Hh])([Ee])(" ")+ {occurance++;}
(" ")*([Aa][nN])(" ")+ {occurance++;}
%%
int main(){
    yyin=fopen("2--animal.txt","r");
    yylex();
    printf("\n%d",occurance);
    return 0;
}

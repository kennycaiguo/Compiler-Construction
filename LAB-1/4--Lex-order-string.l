/* Check if string is in lexicographical order in lex programming */
%option noyywrap
%{
    #include<stdio.h>
    char a='0';int ans=1;
%}

%%
[a-zA-Z] {
    if(a=='0'){
        a=yytext[0];
    }
    else if(yytext[0]-a<0){
        ans=0;
    }else{
        a=yytext[0];
    }
}
\n {
    if(ans==1){
        printf("valid\n");
    }
    else{
        printf("Invalid\n");
    }
}
%%
int main(){
    yylex();
    return 0;
}

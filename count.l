%{
int c=0,word=0,ws=0,t=0,n=0;
%}

%%
"//".*\n ;
"/*"(.*\n)*.*"*/"[\n]? ;
[a-zA-Z]+ {word++;
            c+= strlen(yytext);
          }
[ ] ws++;
\t t++;
\n n++;
%%
int main(void){
  yylex();
  printf("%d %d %d %d %d",c,word,ws,t,n);
}

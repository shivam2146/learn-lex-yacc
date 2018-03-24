%%
[a-zA-Z]+ {printf("rev string: \n");
            int l= strlen(yytext);
            for(int i=l-1;i>=0;i--)
            printf("%c",yytext[i]);
            }

%%

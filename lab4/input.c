#include<stdio.h>
#include<string.h>
int state = 0;
void state0(char ch)
{
    if (ch == '#')
    {
        state = 1;
        return;
    }
    if (ch == 'c')
    {
        state = 8;
        return;
    }
    state = -1;
}//my name is a anuj


int main()
{
    // int n;
    // scanf("%d",&n);
    // while (n)
    // {
        char s[100];
        printf("Enter the string :\t");
        // cin.ignore();
        gets(s);
        int val = dfa(s);
        if (val == 1)
        {
            printf("This is constant declaration.\n");
        }
        else
        {
            printf("This is not a constant declaration.\n");
        }
        //n--;
    // }
}

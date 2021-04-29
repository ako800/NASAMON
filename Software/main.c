/*Leer una serie de numeros y escribir cuantos son positivos, cuantos negativos y cuantos nulos*/

#include <stdio.h>

void main()
{

int i;

for(i=-3;i<=5;i++){


    		if(i>0){

       		 printf("el resultado es positivo\n",i);
    		}

    		if(i==0){

        	printf("el resultado es nulo\n",i);
   		 }

		if(i<0){

        	printf("el resultado es negativo\n",i);
   		 }
	}
}


#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main(int argc, char *argv[]){
	char dir[50];
	if(argc==2){
		bzero(dir,sizeof(dir));	//making the string dir as zero
		strcat(dir,"ls -l ");	//concat ls -l
		strcat(dir,"-i ");		//concat -i
		strcat(dir,argv[1]);	//concat filename argument
		system(dir);//execute the string using system() function
	}
	else{
		printf("Invalid inputs");
	}
}

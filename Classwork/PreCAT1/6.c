#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main(int argc, char *argv[]){
	char dir[100];
	if(argc==2){
		bzero(dir,sizeof(dir));	//make dir as zero
		strcat(dir,"ls ");		//concat ls
		strcat(dir,"> ");		//concat > redirection
		strcat(dir,argv[1]);	//attach path of file
		system(dir);	//execute using system() command
	}
	else{
		printf("\nInvalid input\n");
	}
}

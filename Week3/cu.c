#include <ncurses.h>

int main()
{	
	initscr();			
	printw("Hello World 18MIS1074 S Kailash");	
	refresh();			
	getch();			
	endwin();			

	return 0;
}

Bacteria [] colony;
 void setup()   
 {     
 	size(600, 600);
 	colony = new Bacteria[30];
 	for(int i = 0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {   
 	background(0); 
 	for(int i = 0; i<colony.length; i++)
 	{
 		colony[i].walk();
 		colony[i].show();
 	}
 }  
 class Bacteria
 {     
 	int myX, myY;
 	Bacteria()
 	{
 		myX = 300;
 		myY = 300;
 	}
 	void walk()
 	{
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 	}
 	void show()
 	{
 		fill(255, 0, 0);
 		ellipse(myX, myY, 15, 15);
 	}
 }    
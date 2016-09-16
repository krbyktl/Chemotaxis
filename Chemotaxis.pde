Bacteria bob;
 void setup()   
 {     
 	size(600, 600);
 }   
 void draw()   
 {    
 	background(0);
 	bob = new Bacteria();   
 	bob.walk();
 	bob.show(); 
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
 		int direction = (int)(Math.random()*4)+1;
 		if(direction == 1)
 		{
 			myX = myX + 20;
 		}
 		else if(direction == 2)
 		{
 			myX = myX - 20;
 		}
 		else if(direction == 3)
 		{
 			myY = myY + 20;
 		}
 		else
 		{
 			myY = myY -20;
 		}
 	}
 	void show()
 	{
 		fill(255);
 		ellipse(myX, myY, 40, 40);
 	}
 }    
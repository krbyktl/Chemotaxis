//Bacteria [] colony;
Bacteria bob;
 void setup()   
 {     
 	size(600, 600);
 	frameRate(10);
 }   
 void draw()   
 {    
 	background(0);
 	bob = new Bacteria();
 	bob.walk();
 	bob.show();
 	//colony = new Bacteria[8];   
 	//for(int i = 0; i < colony.length; i++)
 	//{
 		//colony[i] = new Bacteria();
 		//colony[i].walk();
 		//colony[i].show();
 	//}
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
 		ellipse(myX, myY, 10, 10);
 	}
 }    
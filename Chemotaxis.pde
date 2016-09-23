Bacteria [] colony;
 void setup()   
 {     
   size(300, 300);
   colony = new Bacteria[10];
   for(int i = 0; i<colony.length; i++)
   {
     colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {   
   background(200, 200, 0); 
   fill(200, 235, 200);
   ellipse(150, 150, 300, 300);
   ellipse(150, 150, 280, 280);
   for(int i = 0; i<colony.length; i++)
   {
     colony[i].walk();
     colony[i].show();
   }
 }  
 class Bacteria
 {     
   int myX, myY, yourX, yourY, starX, starY;
   Bacteria()
   {
     myX = 150;
     myY = 150;
     yourX = 145;
     yourY = 145;
     starX = 150;
     starY = 260;
   }
   void walk()
   {
     myX = myX + (int)(Math.random()*3)-1;
     myY = myY + (int)(Math.random()*3)-1;
     yourX = yourX + (int)(Math.random()*5)-2;
     yourY = yourY + (int)(Math.random()*5)-2;
   }
   void show()
   {
     color myColor = color(0, 255, 0);
     fill(myColor);
     ellipse(myX, myY, 15, 15);
     fill(100);
     ellipse(yourX, yourY, 10, 10);
     if(get(myX+15, myY+15) == color(100))
     {
       starX = (int)(Math.random()*300);
       starY = (int)(Math.random()*300);
       textSize(42);
       text("POW", starX, starY);
     }
   }
 }  
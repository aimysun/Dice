
 void setup()
	{
	    size(600,650);
	    noLoop();
	}
	void draw()
	{
	    background(10);
	    int total = 0;
	    for(int y = 10; y <= 550; y +=65){
    		for(int x = 10 ; x <= 550; x +=65){
     			Die one = new Die(x, y);
	    		one.show();
	    		one.roll();
	    		total = total + one.numDots;
    		}
  		}
	     
	     fill(255);
	     textSize(15);
	     text("total num dots is " + total, 140, 630);
	}
	void mousePressed()
	{
	    redraw();
	}
	class Die //models one single dice cube
	{
	    int myX, myY;
	    int numDots = (int)(Math.random()*6+1);
	    
	    Die(int x, int y) //constructor
	    {
	    	myX = x;
   			myY = y;
	        
	    }
	    void roll()
	    {
	        numDots = (int)(Math.random()*6+1);
	        fill(random(255), random(255), random(255));
	        if(numDots == 1){
	        	ellipse(myX + 25, myY + 25, 10, 10);
	        }else if(numDots == 2){
	        	ellipse(myX + 15, myY + 25, 10, 10);
	        	ellipse(myX + 30, myY + 25, 10, 10);
	        }else if(numDots == 3){
	        	ellipse(myX + 15, myY + 25, 10, 10);
	        	ellipse(myX + 25, myY + 25, 10, 10);
	        	ellipse(myX + 35, myY + 25, 10, 10);
	        }else if(numDots == 4){
	        	ellipse(myX + 15, myY + 20, 10, 10);
	        	ellipse(myX + 25, myY + 25, 10, 10);
	        	ellipse(myX + 15, myY + 30, 10, 10);
	        	ellipse(myX + 25, myY + 35, 10, 10);
	        }else if(numDots == 5){
	        	ellipse(myX + 15, myY + 15, 10, 10);
	        	ellipse(myX + 35, myY + 15, 10, 10);
	        	ellipse(myX + 15, myY + 35, 10, 10);
	        	ellipse(myX + 35, myY + 35, 10, 10);
	        	ellipse(myX + 25, myY + 25, 10, 10);
	        }else{
	        	ellipse(myX + 15, myY + 25, 10, 10);
	        	ellipse(myX + 35, myY + 25, 10, 10);
	        	ellipse(myX + 15, myY + 13, 10, 10);
	        	ellipse(myX + 35, myY + 13, 10, 10);
	        	ellipse(myX + 15, myY + 38, 10, 10);
	        	ellipse(myX + 35, myY + 38, 10, 10);
	        }
	    }
	    void show()
	    {
	    	fill(random(255), random(255), random(255));
	        rect(myX, myY, 55, 55, 5);
	        
	        
	    }
	}
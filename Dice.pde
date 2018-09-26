
 void setup()
	{
	    size(600,600);
	    noLoop();
	}
	void draw()
	{
	    background(10);
	    for(int y = 10; y <= 550; y +=65){
    		for(int x = 10 ; x <= 550; x +=65){
     			Die one = new Die(x, y);
	    		one.show();
    		}
  		}
	     
	}
	void mousePressed()
	{
	    redraw();
	}
	class Die //models one single dice cube
	{
	    int myX, myY;
	    
	    Die(int x, int y) //constructor
	    {
	    	myX = x;
   			myY = y;
	        
	    }
	    void roll()
	    {
	        //your code here
	    }
	    void show()
	    {
	        rect(myX, myY, 55, 55, 5);
	    }
	}
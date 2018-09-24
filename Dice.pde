
 void setup()
	{
	    size(600,600);
	    noLoop();
	}
	void draw()
	{
	    background(5);
	    Die one = new Die(100,100);
	    one.show();
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
	        rect(myX, myY, 50, 50, 5);
	    }
	}

void setup()
{
	size(300,300);
	background(0,255,0);
	noLoop();
}
void draw()
{
	background(150);

	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	boolean one;
	boolean two;
	boolean three;
	boolean four; 
	boolean five;
	boolean six; 
	int myX, myY;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		roll();
	}

	void roll()
	{
		//your code here
		if((int)Math.random()*6 == 0){
			one=true;
		}else if((int)Math.random()*6 == 1){
			two=true;
		}else if((int)Math.random()*6 == 2){
			three=true;
		}else if((int)Math.random()*6 == 3){
			four=true;
		}else if((int)Math.random()*6 == 4){
			five=true;
		}else{
			six=true;
		}
	}
	void show()
	{
		fill(255);
		rect(myX,myY,10,10);
		if(one=true){
			text("1", myX, myY);
		}else if(two=true){
			text("2", myX, myY);
		}else if(three=true){
			text("3", myX, myY);
		}else if(four=true){
			text("4", myX, myY);
		}else if(five=true){
			text("5", myX, myY);
		}else{
			text("6", myX, myY);
		}
	}
}

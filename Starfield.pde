
Particle[] sam = new Particle [250];
OddballParticle[] bob;
void setup()
{
	background(0);
size(512, 512);
  for (int i=0; i<sam.length; i++)
    sam[i]= new Particle();
sam[0]= new OddballParticle();
}   


void draw()
{
	for (int i=0; i<sam.length; i++)
  {
	sam[i].show();
	sam[i].move();
	sam[0].show();
	
	
	}
}
void mousePressed(){
	background(0);
	for (int i=0; i<sam.length; i++)
    sam[i]= new Particle();
sam[0]= new OddballParticle();
}
class Particle
{
	double myX, myY,myAngle,mySpeed;
	int myColor;
	Particle()
	{
		myX=250;
		myY=250;
	 myAngle = Math.random()*(5*Math.PI);
	 mySpeed = Math.random()*5+1;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
void move()
{
 myX=(Math.cos(myAngle)*mySpeed)+myX;
 myY=(Math.sin(myAngle)*mySpeed)+myY;
}
void show()
{
ellipse((float)myX,(float) myY, 4, 4);
noStroke();
fill(myColor);

}
}
class OddballParticle extends Particle
{
	double myX, myY,myAngle,mySpeed;
	int myColor;
	OddballParticle(){
		myX=250;
		myY=200;
	 myAngle = Math.random()*2*Math.PI;
	 mySpeed = Math.random()*5;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
void move()
{
myX=(Math.cos(myAngle)*mySpeed)+myX;
 myY=(Math.cos(myAngle)*mySpeed)+myY;
}
void show()
{
ellipse((float)myX,(float)myY, 65, 55);
}
}


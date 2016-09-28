Particle[] particles;
void setup()
{
	size(400, 400);
	particles = new Particle[100];
	for(int i = 0; i < particles.length; i = i + 1)
	{
		particles[i] = new NormalParticle();
	}
	particles[0] = new OddballParticle();
}
void draw()
{
	background(0);
	for(int i = 0; i < particles.length; i = i + 1)
	{
		particles[i].move();
		particles[i].show();
	}
}
class NormalParticle implements Particle
{
	double nX, nY, nSpeed, nTheta;
	int nColor;
	NormalParticle(){
		nX = 200;
		nY = 200;
		nSpeed = Math.random()*20 - 10;
		nTheta = Math.random()*2*Math.PI;
		nColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	public void move(){
		nX = nX + Math.cos(nTheta)*nSpeed;
		nY = nY + Math.sin(nTheta)*nSpeed;
	}
	public void show(){
		fill(nColor);
		noStroke();
		ellipse((float)nX, (float)nY, 2, 2);
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
	double oX, oY, oTheta, oSpeed;
	int oColor;
	OddballParticle(){
		oX = 200;
		oY = 200;
		oTheta = Math.random()*2*Math.PI;
		oSpeed = .1;
		oColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	public void move(){
		oX = oX + Math.sin(oTheta)*oSpeed;
		oY = oY + Math.cos(oTheta)*oSpeed;
	}
	public void show(){
		fill(oColor);
		ellipse((float)oX, (float)oY, 12, 12);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}


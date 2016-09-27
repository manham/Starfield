NormalParticle[] particles;
void setup()
{
	size(400, 400);
	background(0);
	particles = new NormalParticle[300];
	for(int i = 0; i < particles.length; i = i + 1)
	{
		particles[i] = new NormalParticle();
	}
}
void draw()
{
	for(int i = 0; i < particles.length; i = i + 1)
	{
		particles[i].move();
		particles[i].show();
	}
}
class NormalParticle
{
	double nX, nY, nSpeed, nTheta;
	int nColor;
	NormalParticle(){
		nX = 200;
		nY = 200;
		nSpeed = 8.25;
		nTheta = 2.03;
		nColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	void move(){
		nX = nX + (Math.cos(nTheta)*nSpeed);
		nY = nY + (Math.sin(nTheta)*nSpeed);
	}
	void show(){
		fill(nColor);
		ellipse((float)nX, (float)nY, 10, 10);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}


import geomerative.*;
//import fontastic.*;
 
//Fontastic f = new Fontastic(this,"CandyCane");
RFont font;
RPoint[] myPoints;
RGroup myGroup;
String myText = "C a n d y C a n e";
int n=100;
 
void setup()
{
  size(1200, 600);
  smooth();
  background(0,102,0);
  RG.init(this);
  font = new RFont("LexieReadable-Regular.ttf", 3*n/2, LEFT);
}

void draw() { 
  RCommand.setSegmentLength(n/20);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  
  myGroup = font.toGroup(myText); 
  myGroup = myGroup.toPolygonGroup();
   
  myPoints = myGroup.getPoints();
  noStroke();
  translate(n/2, n*3);
  
  for (int i=0; i<myPoints.length-3; i++)
  {
       ellipse(myPoints[i].x, myPoints[i].y, n/2, n/3);
       fill(255,153,153); //pink
       ellipse(myPoints[i+1].x, myPoints[i+1].y, n/2, n/3);
       fill(255); //white
       ellipse(myPoints[i+2].x, myPoints[i+2].y, n/2, n/3);
       fill(204,0,0); //red
       ellipse(myPoints[i+3].x, myPoints[i+3].y, n/2, n/3);
       fill(255); //white
       i=i+3;
  }

}
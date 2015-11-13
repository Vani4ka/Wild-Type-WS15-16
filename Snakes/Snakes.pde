// Write Me A Snake Font (Homework 2.1.)
// Course: Wild Type , WS15/16, BUW
//Made By Vanya Gercheva

import fontastic.*;

Fontastic s= new Fontastic(this, "WriteMeASnake");
s.setAuthor("Vanya Gercheva"); 
s.setVersion("1.0");
s.setAdvanceWidth(1024);

float charWidth=1024;
float charHeight=512;


// (let the) BODIES (hit the floor)


//create body 's'
FPoint[] body = new FPoint[4];

body[0] = new FPoint(0,charHeight/4);
body[1] = new FPoint(body[0].x, body[0].y+charHeight/3);
body[2] = new FPoint(charWidth,body[1].y);
body[3] = new FPoint(body[2].x, body[0].y);

body[0].setControlPoint1(body[0].x+charWidth/3,body[0].y-charHeight/4);
body[1].setControlPoint2(body[0].x+charWidth/3,body[1].y-charHeight/4);
body[2].setControlPoint1(body[3].x-charWidth/3, body[1].y+charHeight/4);
body[3].setControlPoint2(body[3].x-charWidth/3, body[0].y+charHeight/4);

s.addGlyph('s').addContour(body);

//create body 'k' (mirror body 's')

FPoint[] body3 = new FPoint[4];

for(int i=0;i<4;i++)
{
  body3[i] = new FPoint();
  body3[i].x = charWidth - body[i].x;
  body3[i].y = body[i].y;
}

body3[0].setControlPoint1(charWidth - body[0].x - charWidth/3,body[0].y-charHeight/4);
body3[1].setControlPoint2(charWidth -body[0].x-charWidth/3,body[1].y-charHeight/4);
body3[2].setControlPoint1(charWidth -body[3].x+charWidth/3, body[1].y+charHeight/4);
body3[3].setControlPoint2(charWidth -body[3].x+charWidth/3, body[0].y+charHeight/4);

s.addGlyph('k').addContour(body3);

//create body 'w'

FPoint[] body1 = new FPoint[4];

body1[0] = new FPoint(0,charHeight/4);
body1[1] = new FPoint(body1[0].x, body1[0].y+charHeight/3);
body1[2] = new FPoint(charWidth,body1[1].y);
body1[3] = new FPoint(body1[2].x, body1[0].y);

s.addGlyph('w').addContour(body1);

//create body 'o' (mirror body 'w')

FPoint[] body2 = new FPoint[4];

for(int i=0;i<4;i++)
{
  body2[i] = new FPoint();
  body2[i].x = charWidth - body1[i].x;
  body2[i].y = body1[i].y;
}

s.addGlyph('o').addContour(body2);

// TAILS

//create tail 'a'
FPoint[] tail = new FPoint[3];

tail[0]= new FPoint(0,charHeight/4);
tail[1]= new FPoint(charWidth,tail[0].y+charHeight/3);
tail[2]= new FPoint(tail[1].x, tail[0].y);

tail[0].setControlPoint1(tail[0].x+charWidth/3, tail[0].y-charHeight/4);
tail[0].setControlPoint2(tail[0].x+charWidth/3, body[1].y-charHeight/4);
tail[1].setControlPoint1(tail[1].x-charWidth/3, tail[1].y+charHeight/4);
tail[2].setControlPoint2(tail[2].x-charWidth/3, tail[2].y+charHeight/4);

s.addGlyph('a').addContour(tail);

//create tail 'l' (mirror tail 'a')

FPoint[] tail3 = new FPoint[3];

for(int i=0;i<3;i++)
{
  tail3[i]= new FPoint();
  tail3[i].x=charWidth - tail[i].x;
  tail3[i].y=tail[i].y;
}

tail3[0].setControlPoint1(charWidth - tail[0].x-charWidth/3, tail[0].y-charHeight/4);
tail3[0].setControlPoint2(charWidth - tail[0].x-charWidth/3, body[1].y-charHeight/4);
tail3[1].setControlPoint1(charWidth - tail[1].x+charWidth/3, tail[1].y+charHeight/4);
tail3[2].setControlPoint2(charWidth - tail[2].x+charWidth/3, tail[2].y+charHeight/4);

s.addGlyph('l').addContour(tail3);

//create tail 'q'

FPoint[] tail1 = new FPoint[3];

tail1[0]= new FPoint(0,charHeight/4);
tail1[1]= new FPoint(charWidth,tail1[0].y+charHeight/3);
tail1[2]= new FPoint(tail1[1].x, tail1[0].y);

tail1[0].setControlPoint2(tail1[0].x+charWidth/3, body1[1].y-charHeight/14);
tail1[1].setControlPoint1(tail1[1].x-charWidth/3, tail1[1].y);

s.addGlyph('q').addContour(tail1);

//create tail 'p' (mirror tail 'q')

FPoint[] tail2= new FPoint[3];
for(int i=0; i<3;i++)
{
  tail2[i]= new FPoint();
  tail2[i].x= charWidth - tail1[i].x;
  tail2[i].y= tail1[i].y;
}
tail2[1].setControlPoint1(charWidth - tail2[1].x-charWidth/3, tail2[1].y);

s.addGlyph('p').addContour(tail2);

// HEADS

// Tongues

// left side

FPoint[] tongue = new FPoint[4];
tongue[0] = new FPoint(9*charWidth/10,3.1*charHeight/4);
tongue[1] = new FPoint(9*charWidth/10,3.2*charHeight/4);
tongue[2] = new FPoint(charWidth,3.2*charHeight/4);
tongue[3] = new FPoint(charWidth,3.1*charHeight/4);

FPoint[] tongue1 = new FPoint[4];
tongue1[0] = new FPoint(14*charWidth/15,3.1*charHeight/4);
tongue1[1] = new FPoint(14*charWidth/15,3.2*charHeight/4);
tongue1[2] = new FPoint(charWidth,3.5*charHeight/4);
tongue1[3] = new FPoint(charWidth,3.4*charHeight/4);

//rigth side (mirror left side)

FPoint[] tongue2 = new FPoint[4];
for(int i=0;i<4;i++)
{
  tongue2[i]= new FPoint();
  tongue2[i].x=charWidth - tongue[i].x;
  tongue2[i].y=tongue[i].y;
}

FPoint[] tongue3 = new FPoint[4];
for(int i=0;i<4;i++)
{
  tongue3[i]= new FPoint();
  tongue3[i].x=charWidth - tongue1[i].x;
  tongue3[i].y=tongue1[i].y;
}

//create head 'd'

FPoint[] head = new FPoint[4];
head[0] = new FPoint(0,charHeight/4);
head[1] = new FPoint(head[0].x, body[0].y+charHeight/3);
head[2] = new FPoint(charWidth-charWidth/3,head[1].y+charHeight/3);
head[3] = new FPoint(head[2].x, head[0].y+charHeight/3);

head[0].setControlPoint1(body[0].x+charWidth/3,body[0].y-charHeight/4);
head[1].setControlPoint2(body[0].x+charWidth/3,body[1].y-charHeight/4);
head[2].setControlPoint1(head[2].x-charWidth/8,head[2].y);
head[3].setControlPoint2(head[2].x-charWidth/8,head[3].y);
head[2].setControlPoint2(head[2].x+charWidth/3,head[2].y+charHeight/12);
head[3].setControlPoint1(head[3].x+charWidth/3,head[3].y+charHeight/10);

s.addGlyph('d').addContour(head);
s.getGlyph('d').addContour(tongue);
s.getGlyph('d').addContour(tongue1);

//create head 'j' (mirror head 'd')

FPoint[] head2 = new FPoint[4];
for(int i=0;i<4;i++)
{
  head2[i]= new FPoint();
  head2[i].x=charWidth - head[i].x;
  head2[i].y=head[i].y;
}

head2[0].setControlPoint1(charWidth-body[0].x-charWidth/3,body[0].y-charHeight/4);
head2[1].setControlPoint2(charWidth-body[0].x-charWidth/3,body[1].y-charHeight/4);
head2[2].setControlPoint1(charWidth-head[2].x+charWidth/8,head[2].y);
head2[3].setControlPoint2(charWidth-head[2].x+charWidth/8,head[3].y);
head2[2].setControlPoint2(charWidth-head[2].x-charWidth/3,head[2].y+charHeight/12);
head2[3].setControlPoint1(charWidth-head[3].x-charWidth/3,head[3].y+charHeight/10);

s.addGlyph('j').addContour(head2);
s.getGlyph('j').addContour(tongue2);
s.getGlyph('j').addContour(tongue3);

//create head 'e'

FPoint[] head1 = new FPoint[4];
head1[0] = new FPoint(0,charHeight/4);
head1[1] = new FPoint(head1[0].x, body1[0].y+charHeight/3);
head1[2] = new FPoint(charWidth-charWidth/3,head1[1].y+charHeight/3);
head1[3] = new FPoint(head1[2].x, head1[0].y+charHeight/3);

head1[0].setControlPoint1(body1[0].x+charWidth/3,body1[0].y);
head1[1].setControlPoint2(body1[0].x+charWidth/3,body1[1].y);
head1[2].setControlPoint1(head1[2].x-charWidth/8,head1[2].y);
head1[3].setControlPoint2(head1[2].x-charWidth/8,head1[3].y);
head1[2].setControlPoint2(head1[2].x+charWidth/3,head1[2].y+charHeight/12);
head1[3].setControlPoint1(head1[3].x+charWidth/3,head1[3].y+charHeight/10);

s.addGlyph('e').addContour(head1);
s.getGlyph('e').addContour(tongue);
s.getGlyph('e').addContour(tongue1);

//create head 'i' (mirror head 'e')

FPoint[] head3 = new FPoint[4];
for(int i=0;i<4;i++)
{
  head3[i]= new FPoint();
  head3[i].x=charWidth - head1[i].x;
  head3[i].y=head1[i].y;
}

head3[0].setControlPoint1(charWidth-body1[0].x-charWidth/3,body1[0].y);
head3[1].setControlPoint2(charWidth-body1[0].x-charWidth/3,body1[1].y);
head3[2].setControlPoint1(charWidth-head1[2].x+charWidth/8,head1[2].y);
head3[3].setControlPoint2(charWidth-head1[2].x+charWidth/8,head1[3].y);
head3[2].setControlPoint2(charWidth-head1[2].x-charWidth/3,head1[2].y+charHeight/12);
head3[3].setControlPoint1(charWidth-head1[3].x-charWidth/3,head1[3].y+charHeight/10);

s.addGlyph('i').addContour(head3);
s.getGlyph('i').addContour(tongue2);
s.getGlyph('i').addContour(tongue3);

// create mouse 'm'

FPoint[] mouse = new FPoint[4];

mouse[0]= new FPoint(charWidth/4, 0);
mouse[1]= new FPoint(charWidth/3, charHeight/4);
mouse[2]= new FPoint(mouse[1].x+charWidth/15, mouse[1].y+charWidth/15);
mouse[3]= new FPoint(2*charWidth/3, mouse[0].y);

mouse[2].setControlPoint2(1.7*charWidth/3,mouse[2].y+charHeight/4);
mouse[3].setControlPoint1(3*charWidth/4,mouse[1].y);
mouse[1].setControlPoint2(mouse[1].x-charWidth/18,mouse[2].y+charWidth/10);
mouse[2].setControlPoint1(mouse[1].x+charWidth/10,mouse[2].y);

FPoint[] tailm = new FPoint[4];
tailm[0] = new FPoint(charWidth-charWidth/3,mouse[1].y-charHeight/8);
tailm[1] = new FPoint(charWidth-charWidth/3,mouse[1].y-charHeight/8+charHeight/25);
tailm[2] = new FPoint(charWidth-charWidth/15,2*charHeight/2+charHeight/25);
tailm[3] = new FPoint(charWidth-charWidth/15,2*charHeight/2);

tailm[0].setControlPoint1(tailm[0].x+charWidth/6,tailm[0].y);
tailm[1].setControlPoint2(tailm[1].x+charWidth/7,tailm[1].y);
tailm[2].setControlPoint1(tailm[2].x-charWidth/6,tailm[2].y);
tailm[3].setControlPoint2(tailm[3].x-charWidth/7,tailm[3].y);


s.addGlyph('m').addContour(mouse);
s.getGlyph('m').addContour(tailm);

// grass glyph 'g'

PVector[] grass = new PVector[17];

grass[0]=new PVector(0,0);
grass[1]=new PVector(0,charHeight/3);
grass[2]=new PVector(charWidth/16,charHeight/5);
grass[3]=new PVector(charWidth/8,2*charHeight/3);
grass[4]=new PVector(charWidth/4,charHeight/4);
grass[5]=new PVector(charWidth/4,charHeight/2);
grass[6]=new PVector(5*charWidth/16,charHeight/3);
grass[7]=new PVector(charWidth/2,2*charHeight/3+charHeight/10);
grass[8]=new PVector(charWidth/2,charHeight/4);
grass[9]=new PVector(9*charWidth/16,charHeight/2);
grass[10]=new PVector(11*charWidth/16,charHeight/4);
grass[11]=new PVector(11*charWidth/16,2*charHeight/3);
grass[12]=new PVector(13*charWidth/16,charHeight/4);
grass[13]=new PVector(7*charWidth/8,charHeight/2);
grass[14]=new PVector(15*charWidth/16,charHeight/4);
grass[15]=new PVector(charWidth,charHeight/3);
grass[16]=new PVector(charWidth,0);

s.addGlyph('g').addContour(grass);

//create font 

s.buildFont();
s.cleanup();

//use font 

int fontsize = 100;

PFont myFont = createFont(s.getTTFfilename(), fontsize);

textFont(myFont);
size(1100, 1100);
background(255);
fill(0);

//Testing all the characters
String mytext = "  qwe iop\nassd jkkl\nassssssssdm\ngmggggg\nasdggmgioop";

textLeading(fontsize);
text(mytext, 0, fontsize);
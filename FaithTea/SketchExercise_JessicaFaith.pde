void setup(){
  size(500,500);
}

void draw(){
  background(220);
     //face and eyes
strokeWeight(2);
  circle(250,250,450);
  circle(165,230,140);
  circle(335,230,140);
  
    //mouth
line (210,350,290,350);
line (90,150,190,110);
line (310,110,410,150);
  
     //pupils
  circle(165,225,130);
  circle(335,225,130);
    
    //shine
  translate(150, 205);
rotate(PI/3.0);
  ellipse(0,0,60,80);

rotate(-1*PI/3.0);
    translate(170, 0);
rotate(PI/3.0);
  ellipse(0,0,60,80);
  
rotate(-1*PI/3.0);
    translate(40, 50);
rotate(PI/3.0);
  ellipse(0,0,30,40);
  
rotate(-1*PI/3.0);
    translate(-170, 0);
rotate(PI/3.0);
  ellipse(0,0,30,40);






}

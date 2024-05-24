void setup() {

  size(1000, 700);
  background(14, 59, 67);
  frameRate(30);
}

void draw() {

  noStroke();
  fill(14, 59, 67, 100);
  rectMode(CORNER);
  rect(0, 0, width, height); // to create a trail effect

  //stars
  fill(250, 255, 129);
  ellipse(55, 40, 3, 3);
  
  // testing a wiggly star effect
  pushMatrix();
  rectMode(CENTER);
  translate(width/2,height/2);
  rotate(degrees(frameCount));
  rect(0,0,5,2);
  popMatrix();
  
  
  ellipse(800, 550, 4, 4);
  ellipse(200, 200, 1, 1);
  ellipse(553, 110, 2, 2);
  ellipse(100, 470, 4, 4);
  fill(250, 255, 230);

  // moon
  pushMatrix();
  rotate(TWO_PI);
  translate(750, 230);
  ellipse(0, 0, 250, 250);
  println(sin(frameCount)*10);
  popMatrix();

  // ground
  fill(14, 21, 37);
  pushMatrix();
  translate(width/2, height+200);
  ellipse(0, 0, 1500, 700);
  popMatrix();

  //if(frameCount%4==1){
    
    // Ghost on mouse pressed
  if (mousePressed==true) {

    pushMatrix();
    translate(mouseX, mouseY);
    fill(255);
    ellipse(0, 0, 90, 90);
    rectMode(CENTER);
    rect(0, 40, 90, 75);
    ellipse(-10, 75, 23, 23);
    ellipse(-33, 75, 23, 23);
    ellipse(12, 75, 23, 23);
    ellipse(33, 75, 23, 23);
    fill(0);
    ellipse(-20, 0, 15, 20);
    ellipse(20, 0, 15, 20);
    noFill();
    stroke(0);
    arc(0, 0, 10, 10, 0, PI);

    popMatrix();
  }
}

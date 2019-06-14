PImage img;

void setup(){
  size(1280,631);
  img = loadImage("sea.jpg");
  background(0);
}

void draw(){
  //image(img,0,0); 
  for (int i = 0; i < 1000; i++){
    float x = random(width);
    float y = random(height);
    color c = img.get(int(x),int(y));
    blendMode(BLEND);
    strokeWeight(0.1);
    stroke(c);   
    //stroke(255,10);
    noFill();
    rect(x,y,mouseX,mouseY);
    ////stroke(random(255),random(255),255); 
    //stroke(255,10); 
    //strokeWeight(0.5);
    //rect(x,y,1,random(500));
    //stroke(255,10);  
    //ellipse(x,y,100,100);
}

}

PImage img;

void setup(){
  size(1280,719);
  img = loadImage("Aegean.jpg");
  background(245, 222, 179);
}

void draw(){
  //image(img,0,0); 
  for (int i = 0; i < 300; i++){
    float x = random(width);
    float y = random(height);
    color c = img.get(int(x),int(y));
    blendMode(BLEND);
    fill(c,5);
    //strokeWeight(1);
    noStroke();   
    //stroke(255,10);
    ellipse(x,y,30,30);
}

}

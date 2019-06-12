PImage img;

void setup(){
  size(1280,719);
  img = loadImage("summer.jpg");
  background(245, 222, 179);
}

void draw(){
  //image(img,0,0); 
  for (int i = 0; i < 30; i++){
    float x = random(width);
    float y = random(height);
    color c = img.get(int(x),int(y));
    fill(c,5);
    strokeWeight(4);
    stroke(c);
    rect(x,y,random(10,30),random(10,30));
}

}

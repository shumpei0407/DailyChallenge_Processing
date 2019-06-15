class Circle{
  float x;
  float y;
  float r;
     
     boolean growing = true;
  
  Circle(float x_, float y_){
   x = x_;
   y = y_;
   r = 10;
  
  }
  
  void grow(){
   if (growing) { 
    r = r - random(15) + random(15); 
   }
  }
  
  boolean edges(){
   return (x + r > width || x - r < 0 || y + r > height || y - r < 0) ;
  }
  
  void show(){
   strokeWeight(5);
   stroke(255);
   fill(0);
   rect(x, y, r*2, r*2);
  }
}

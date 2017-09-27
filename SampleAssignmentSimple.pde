//GOAL: make a 'traffic light' simulator. For now, just have the light 
// changing according to time. You may want to investigate the millis()
// function at processing.org/reference.

int time = millis();
int maxTime = 3000;
int state =1 ;
void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  drawOutlineOfLights();
  drawLight();
}

void redLight(){
  if (state ==3){
    fill(255, 0, 0);
    ellipse(width/2, height/2 - 65, 50, 50); //top
  }
}
  
void drawOutlineOfLights() {
  //box
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 75, 200, 10);
  
  //lights
  if (time> maxTime*2){
    state = 3;
    
  }
  
 if (time > maxTime){
   state = 2;
 }
  
  
}

void drawLight(){
  if (state ==3){
    fill(255, 0, 0);
    ellipse(width/2, height/2 - 65, 50, 50); //top
  }
  else if (state ==2){
    fill(255, 175, 0);
    ellipse(width/2, height/2, 50, 50); //middle
  }
  else if (state == 1){
    fill(0, 255, 0);
    ellipse(width/2, height/2 + 65, 50, 50); //bottom
  }
}
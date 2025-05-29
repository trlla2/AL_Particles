float x,y,vx,vy,ax,ay,m;

float h, fgx,fgy;

void setup(){
  size(800,800);
  
  // no hace falta inicializar la aceleracion
  x = width/2; //metros
  y = height/2; // metros
  vx = 25; // Metros por seg
  vy = -50;// Metros por seg
  m = 1; // kilos 
  h = 0.04; // segundos
  fgx = 0.0; // fuerza (Newtons)
  fgy = 9.8; // fuerza (Newtons)
}


void draw(){
  background(0);
  
  if(y > height){
    x = width/2; //metros
    y = height/2; // metros
    vx = 25; // Metros por seg
    vy = -50;// Metros por seg
  }
  
  
  // Solver Euler
  // 1-Aceleracion 
  ax = fgx/m;
  ay = fgy/m;
  
  // 2-Velocidad
  vx = vx + h * ax;
  vy = vy + h * ay;
  
  // 3-Posicion
  x = x + h * vx;
  y = y + h * vy;

  // 4- printamos
  fill(0,255,0);
  ellipse(x,y,50,50);
}

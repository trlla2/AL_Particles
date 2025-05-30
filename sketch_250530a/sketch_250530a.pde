
particula partic1;
particula partic2;
float kd = 0.1;
float h = 0.04;


class particula{
  float color_p;
  float tamanyo_p;
  float masa_p;
  float[] position = new float[2];
  float[] velocidad = new float[2];
  float[] aceleracion_p 0 new float[2];
  
  particulas(color c, float t, float m, float[] p, float[] v){
    color_p = c;
    tamanyo_p = t; 
    masa_p = m;
    for(int i =0; i<2;i++){
      position = p;
      velocidad = v 
    } 
  }
  
  void mover_p(){
    float[] fuerzas = new float[2];
    fuerzas[0] = 0; // gravedad
    furezas[1] = 9.8;
    
    fuerzas[0] -= kd*velocidad_p[0]; // friccion
    furezas[1] -= kd*velocidad_p[0];
    
    aceleracion_p[0] = fuerzas[0]/masa_p;
    aceleracion_p[1] = fuerzas[1]/masa_p;
    
    
    
  }
  
  void print_p(){
    fill(color_p);
    ellipse(position[0], position[1], tamanyo_p, tamanyo_p);
  }
}

void setup(){
  size(800,800);
  float[] p_setup = new float[2];
  float[] v_setup = new float[2];
  p_setup[0] = width/2;
  p_setup[1]= height/2;
  v_setup[0] = 20;
  v_setup[1] = -15;
  
  partic1 = new particula(color(255,0,0 ), 70, 1, p_setup, v_setup);
  partic2 = new particula(color(255,0,255),20,1,  p_setup, v_setup);
  
  
}

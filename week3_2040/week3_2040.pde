void setup() {
  size(800, 600);
}

float lx = -9999, ly = -9999;

void draw() {
  background(0);

  for (int i = 0; i < height; i++) {

    float wlen1 = 0.11;
    float w1 = sin(i*wlen1)*30;

    float wlen2 = 0.8;
    float w2 = 1+cos(frameCount*0.0004*i+wlen2)*10;

    float waveadd = (w1*w2)/2;
stroke(255);
   point(i,height/2+w2);

    if (lx < (height)-1) {
      line(i, width/2+waveadd, lx, ly);
      lx = i;
      ly = height/2+waveadd;
    } else {
      lx = 3;
      ly = height;
    }
  }
  
  
  



}

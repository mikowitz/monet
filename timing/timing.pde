int zero = 10;
int duration = 1440;
int last = zero + duration;

color[] colors = {#932226,#71718E,#3344FC,#F01818,#F76FFF,#7BA245,#14F7FC,#396708,#FF3BFC,#FFDF3B,#50F76A,#5B176B};

void setup() {
  size(1460, 500);
  background(255);
}

int[] colorOrder = {11,10,9,8,7,6,5,4,3,2,3,2,1,0};
int[] voiceOne = {9,5,5,5,5,9,5,5,5,9,9,5,5,9};
int[] voiceTwo = {5,4,4,4,4,5,4,4,4,4,5,4,4,5};
int[] voiceThree = {8,1,1,1,1,8,1,1,1,8,7,1,1,8};
int[] voiceFour = {9,0,0,0,0,9,0,0,0,9,9,0,0,9};
void draw() {
  noLoop();

  strokeWeight(1);

  int start = zero;
  for (int i = 0; i < 14; i++) {
    fill(colors[colorOrder[i]]);
    noStroke();
    int w = voiceOne[i]*(duration/90);
    rect(start, 0, w, 100);
    start += w;  
  }
  start = zero;
  for (int i = 0; i < 14; i++) {
    fill(colors[colorOrder[i]]);
    noStroke();
    rect(start, 100, voiceTwo[i]*(duration/60), 100);
    start += voiceTwo[i]*(duration/60); 
  }
  start = zero;
  for (int i = 0; i < 14; i++) {
    fill(colors[colorOrder[i]]);
    noStroke();
    rect(start, 200, voiceThree[i]*(duration/48), 100);
    start += voiceThree[i]*(duration/48); 
  }
  start = zero;
  for (int i = 0; i < 14; i++) {
    fill(colors[colorOrder[i]]);
    noStroke();
    rect(start, 300, voiceFour[i]*(duration/45), 100);
    start += voiceFour[i]*(duration/45); 
  }
  
  stroke(0);
  strokeWeight(1);
  line(0, 100, width, 100);

  line(0, 200, width, 200);
  line(0, 300, width, 300);
  line(0, 400, width, 400);

  for(int i = zero; i < last; i += (duration/90)) {
    line(i, 0, i, 100);
  }

  for(int i = zero; i < last; i += (duration/60)) {
    line(i, 100, i, 200);
  }

  for(int i = zero; i < last; i += (duration/48)) {
    line(i, 200, i, 300);
  }

  for(int i = zero; i < last; i += (duration/45)) {
    line(i, 300, i, 400);
  }

  strokeWeight(2);
  line(zero, 0, zero, height);
  line(last, 0, last, height);

  line(zero + duration/2, 400, zero + duration/2, 500);
  line(zero + duration * 9/10, 400, zero + duration * 9/10, 500);
  line(zero + duration * 2/5, 400, zero + duration * 2/5, 500);
  line(zero + duration * 2/3, 400, zero + duration * 2/3, 500);

  save("divs.png");
}

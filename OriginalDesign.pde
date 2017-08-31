void setup() {
  size(400,400);
}
int yrLander = -600;
int yrLauncher = 306;
int time = 0;
int time2 = 0;
int truckX = -90;
int landerX = 50;
color fire = (#E37F1B);
color skyCover = (#288BEA);
color legPos1 = (#000000);
color legPos2 = (#FFFFFF);

void draw() {
  noStroke();
  background(#288BEA);
  fill(0,210,0);
  rect(-1,370,401,31);
  fill(120);
  rect(150,360,100,10);
  rocketLander();
  rocketLauncher();
  redTruck();
}

void rocketLander() {
  //fire
  fill(fire);
  triangle(landerX,yrLander+40,landerX-10,yrLander+55,landerX+10,yrLander+55);
  //cone
  fill(80);
  triangle(landerX,yrLander+30,landerX-10,yrLander+45,landerX+10,yrLander+45);
  //legs
  fill(0,0,0);
  quad(landerX-20,yrLander+55,landerX,yrLander+20,landerX-10,yrLander-10,landerX-10,yrLander+20);
  quad(landerX+20,yrLander+55,landerX,yrLander+20,landerX+10,yrLander-10,landerX+10,yrLander+20);
  //body
  fill(255,255,255);
  ellipse(landerX,yrLander,20,70);
  yrLander+=3;
  if (yrLander >= 100) {
    yrLander--;
  }
  if (yrLander >=200) {
    yrLander--;
  }
  if (yrLander >=316) {
    yrLander--;
    time ++;
    if (time >= 10) {
      fire = skyCover;
      truckX++;
    }
    if (truckX >= 30) {
      landerX++;
    }
    if (landerX >= 200) {
      landerX--;
      time2++;
    }
    if (time2 >= 0.1) {
      skyCover = (120);
    }
    if (time2 >= 250) {
      yrLander = -650;
      yrLauncher = 306;
      truckX = -90;
      landerX = 50;
      fire = (#E37F1B);
      skyCover = (#288BEA);
      legPos1 = (#000000);
      legPos2 = (#FFFFFF);
      time = 0;
      time2 = 0;
    }
    
  }
}

void rocketLauncher() {
  //fire
  fill(#E37F1B);
  triangle(200,yrLauncher+40,190,yrLauncher+55,210,yrLauncher+55);
  //cone
  fill(80);
  triangle(200,yrLauncher+30,190,yrLauncher+45,210,yrLauncher+45);
  //legs
  fill(legPos1);
  quad(180,yrLauncher+55,200,yrLauncher+20,190,yrLauncher-10,190,yrLauncher+20);
  quad(220,yrLauncher+55,200,yrLauncher+20,210,yrLauncher-10,210,yrLauncher+20);
  //body
  fill(255,255,255);
  ellipse(200,yrLauncher,20,70);
  yrLauncher--;
  if (yrLauncher <=270) {
    legPos1 = skyCover;
  }
  if (yrLauncher <= 250) {
    yrLauncher--;
  }
  if (yrLauncher <=150) {
    yrLauncher--;
  }
  if (yrLauncher <=50) {
    yrLauncher--;
  }
}

void redTruck() {
  fill(255,0,0);
  rect(truckX,355,50,10);
  fill(0);
  ellipse(truckX,360,20,20);
  ellipse(truckX+40,360,20,20);
  fill(255,0,0);
  rect(truckX+50,365,30,-30);
  fill(0);
  ellipse(truckX+80,360,20,20);
}

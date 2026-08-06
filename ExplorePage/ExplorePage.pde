PFont pressStart; 
PFont arial;
PImage gitIM;
PImage linkedIM;
PImage emailIM;
PImage qmIM;
boolean contactOpen;


void setup(){
    size(1500, 800);
    gitIM = loadImage("Github.png");
    linkedIM = loadImage("Linkedin.png");
    emailIM = loadImage("Email.png");
    qmIM = loadImage("QM.png");
    contactOpen = false;

    

   
}

void draw(){
    drawBackground();
    drawScreen();
    drawControls();
    if(contactOpen){
        drawContactInfo();
    }
    

}

void drawBackground(){
    //Outline 
    background(74, 8, 39);
    
    //Background
    fill(130, 17, 66);
    rect(10,10,1480,780);

    

}

void drawScreen(){
     //Inner Screen
    fill(250, 125, 182);
    stroke(74, 13, 52);
    strokeWeight(4);
    rect(150,50,1200,700,50);

   
   

}




void drawControls(){
    //Controls
    
    
    stroke(0,0,0);

    // circle(87.5,550,75);
    // fill(23, 23, 23);
    // circle(87.5,550,60);
    // fill(0,0,0);
    // circle(87.5,550,50);

    fill(0,0,0);
    rect(60,525,25,75);
    rect(35,550,75,25);

    stroke(176, 176, 176);
    strokeWeight(3);
    line(72.5,535, 72.5, 545);
    line(72.5, 580, 72.5, 590);
    line(45, 562.5, 55, 562.5);
    line(90, 562.5, 100, 562.5);
    stroke(0);

    noFill();
    strokeWeight(2);
    circle(72.5,562.5, 100);

    fill(0,0,0);
    noStroke();
    circle(1425,275,30);
    circle(1425,325,30);
    circle(1450,300,30);
    circle(1400,300,30);

    textAlign(CENTER,CENTER);
    fill(176, 176, 176);
    arial = createFont("Arial",20);
    textFont(arial);
    text("X", 1425, 275);
    text("A", 1450,300);
    text("Y", 1400, 300);
    text("B", 1425, 325);

    noFill();
    stroke(0,0,0);
    circle(1425,300,100);

    
    
    noFill();
    circle(1425,550,90);
    fill(23, 23, 23);
    circle(1425,550,70);
    fill(0,0,0);
    circle(1425,550,50);

    noFill();
    circle(77.5,200,90);
    fill(23, 23, 23);
    circle(77.5,200,70);
    fill(0,0,0);
    circle(77.5,200,50);

    noStroke();
    fill(255,0,0);
    circle(50,750,20);

    stroke(0,0,0);
    line(1400,50,1450,50);
    line(1400,60,1450,60);
    line(1400,70,1450,70);

    noFill();
    stroke(0,0,0);
    ellipse(735,770,20,20);
    ellipse(735,770,10,10);
    ellipse(765,770,20,20);
    fill(0);
    ellipse(765,770,10,10);
    
    
    image(qmIM, 1285,755,30,30);

    textAlign(CENTER,CENTER);
    pressStart = createFont("Press Start 2P", 10);
    textFont(pressStart);
    fill(0,0,0);
    text("Power",90,750);

    

}

void drawContactInfo(){
    stroke(0);
    strokeWeight(4);
    fill(255,255,255);
    rect(1125,580,350,150, 30);
    noStroke();
    triangle(1270,720,1300,750,1330,720);
    stroke(0);
    line(1280,730,1300,750);
    line(1300,750,1320,730);


    image(gitIM, 1145, 590, 40,40);
    image(linkedIM, 1145, 635, 40,40);
    image(emailIM, 1145, 680, 40,40);

    textAlign(LEFT,CENTER);
    textFont(pressStart);
    textSize(10);
    fill(0,0,0);
    text("@caitlynj10", 1195, 610);
    text("/caitlyn-jones1022", 1195, 655);
    text("caitlyn.jones1022@gmail.com", 1195, 700);

}

void mousePressed(){
    if(mouseX > 1285 && mouseX < 1315 && mouseY > 755 && mouseY < 785){
        contactOpen = !contactOpen;
    }


}



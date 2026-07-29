PFont pressStart;
PImage img;

void setup() {
    size(1500, 800);
    
    
   


    //Title
    textAlign(CENTER, CENTER);
    pressStart = createFont("Press Start 2P", 40);
    textFont(pressStart);
    fill(0,0,0);
    text("CONTACT", 750, 60);


    


    
}

void draw(){
    drawBackground();
    drawScreen();
    
    drawControls();
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
    fill(255, 255, 255);
    noStroke();
    rect(210,110,1080,580,50);
   
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

    noFill();
    strokeWeight(2);
    circle(72.5,562.5, 100);

    fill(0,0,0);
    noStroke();
    circle(1425,275,30);
    circle(1425,325,30);
    circle(1450,300,30);
    circle(1400,300,30);

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
    fill(255, 0, 0);
    circle(50,750,20);

    stroke(0,0,0);
    line(1400,50,1450,50);
    line(1400,60,1450,60);
    line(1400,70,1450,70);

    textAlign(CENTER,CENTER);
    pressStart = createFont("Press Start 2P", 10);
    textFont(pressStart);
    fill(0,0,0);
    text("Power",90,750);

}

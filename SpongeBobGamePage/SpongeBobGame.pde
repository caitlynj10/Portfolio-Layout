SpongeBob mySpongeBob = new SpongeBob(400, 500);
ArrayList<KrabbyPatties> rain = new ArrayList<KrabbyPatties>();
float pattieSpeed = 8;
boolean gameStarted = false;
int gameWidth = 1200;

void setupSpongeBob(){
  
    rain.add(new KrabbyPatties());
    
}

void startGame(){
    //background(146, 242, 245);
 
    int yStart = 0;
    int yEnd = height;
    
    color topColor = color(146, 242, 245);
    color bottomColor = color(33, 207, 91);

    for (int i = yStart; i <= yEnd; i++) {
    float inter = map(i, yStart, yEnd, 0, .5);
    color c = lerpColor(topColor, bottomColor, inter);
    stroke(c);
    line(0, i, gameWidth, i);
    }
    stroke(0,0,0);
    

    stroke(255, 0, 0);
    strokeWeight(5);
    drawEvenFlower(); 

    pushMatrix();
    translate(75, 550);
    scale(0.50);
    stroke(255, 0, 162);
    strokeWeight(6);
    drawEvenFlower();
    popMatrix();

    pushMatrix();
    translate(600, 100);
    scale(0.45);
    stroke(255, 128, 0);
    strokeWeight(10);
    drawEvenFlower();
    popMatrix();

    pushMatrix();
    translate(400, 25);
    scale(0.55);
    stroke(251, 125, 255);
    strokeWeight(3);
    drawOddFlower1();
    popMatrix();

  

    pushMatrix();
    translate(50, 50);
    scale(0.25);
    stroke(120, 78, 173);
    strokeWeight(6);
    drawOddFlower1();
    popMatrix();

    pushMatrix();
    translate(900, 350);
    scale(0.50);
    stroke(163, 83, 41);
    strokeWeight(6);
    drawOddFlower1();
    popMatrix();


    pushMatrix();
    translate(340, 250);
    scale(0.30);
    stroke(0, 148, 50);
    strokeWeight(6);
    drawOddFlower2();
    popMatrix();

    pushMatrix();
    translate(800, -70);
    stroke(33, 143, 255);
    strokeWeight(4);
    drawOddFlower2();
    popMatrix();

    pushMatrix();
    translate(780,340);
    scale(0.30);
    stroke(207, 78, 132);
    strokeWeight(8);
    drawOddFlower2();
    popMatrix();
    


    pushMatrix();
    translate(550, 250);
    scale(0.60);
    stroke(86, 181, 0);
    strokeWeight(6);
    drawOddFlower3();
    popMatrix();
    
    pushMatrix();
    translate(750,515);
    scale(0.50);
    stroke(183, 0, 196);
    strokeWeight(4);
    drawOddFlower3();
    popMatrix();

    pushMatrix();
    translate(60, 375);
    scale(0.40);
    stroke(119, 0, 255);
    strokeWeight(4);
    drawOddFlower3();
    popMatrix();

   
    pushMatrix();
    translate(950, 525);
    scale(0.60);
    stroke(0, 196, 154);
    strokeWeight(6);
    drawOddFlower4();
    popMatrix();

      
    pushMatrix();
    translate(200, 400);
    scale(0.50);
    stroke(255, 251, 0);
    strokeWeight(6);
    drawOddFlower4();
    popMatrix();
    

    pushMatrix();
    translate(350, 350);
    stroke(255, 107, 199);
    strokeWeight(6);
    drawOddFlower4();
    popMatrix();

    


    fill(238, 242, 34);
    stroke(0);
    rect(gameWidth/2-100, 350, 200, 100, 28);
    fill(0);
    textAlign(CENTER, CENTER);
    pressStart = createFont("Press Start 2P", 16);
    textFont(pressStart);
    text("Start Game", gameWidth/2, 400);

    textAlign(CENTER,CENTER);
    pressStart = createFont("Press Start 2P", 32);
    textFont(pressStart);
    text("Krabby Patty Catcher", gameWidth/2, 50);

}
void mousePressedSpongeBob(){

    float mx = (mouseX-150);
    float my = (mouseY-50)/.875;

    if(!gameStarted){
        if(mx > gameWidth/2-100 && mx < gameWidth/2+100 && my > 350 && my < 450){
            gameStarted = true;
        }
    }
     if(gameStarted){
        if(mx > 0 && mx < 80 && my > 0 && my < 40){
            gameStarted = false;
            mySpongeBob.score = 0;
            mySpongeBob.level = 1;
            pattieSpeed = 8;
            rain.clear();
            rain.add(new KrabbyPatties());
        }
    }
}

void drawSpongeBob(){
   
    pushMatrix();
    pushStyle();
    translate(150,50);
    scale(1,.875);

    float mx = (mouseX - 150);
    float my = (mouseY-50)/.875;
    
    if (!gameStarted) {
        startGame();
    }
    else{
        int yStart = 0;
        int yEnd = height;
        color topColor = color(146, 242, 245);
        color bottomColor = color(33, 207, 91);

        for (int i = yStart; i <= yEnd; i++) {
        float inter = map(i, yStart, yEnd, 0, .5);
        color c = lerpColor(topColor, bottomColor, inter);
        stroke(c);
        line(0, i, gameWidth, i);
        }
       
        fill(255, 229, 161);
        stroke(255, 229, 161);
        rect(0,650,1200,150);
        drawSand();
        noStroke();
        arc(50, 675, 100, 100, PI, TWO_PI);
        arc(300, 665, 150, 100, PI, TWO_PI);
        arc(550, 675, 100, 75, PI, TWO_PI);
        arc(750, 650, 100, 100, PI, TWO_PI);
        arc(1100, 665, 150, 100, PI, TWO_PI);
        arc(900, 675, 100, 75, PI, TWO_PI);
        
        drawSeaweed();  
        drawFlowersBG();
        
        //Bubbles 
        strokeWeight(2);
        drawBubbles();

        stroke(0,0,0);
  
        for (int i = 0; i < rain.size(); i++) {
            rain.get(i).act();
        }
        
        mySpongeBob.act();
        textAlign(CENTER, CENTER); // Align text to center
        textSize(10);
        fill(0);
        text("Back", 40, 20);
        if(mx > 0 && mx < 80 && my > 0 && my < 40){
            fill(255, 0, 0);
            text("Back", 40, 20);
        }
        textSize(16); // Set Text Size  
        fill(0, 0, 0); // Text color black 
        text("Score: ", gameWidth-200, 20); // Print "Score" on canvas
        text(mySpongeBob.score, gameWidth-120, 20); // Print player's score
        textSize(40); // Set Text Size
        text("Level ", gameWidth/2-20, 25);
        text(mySpongeBob.level, gameWidth/2 + 100, 25);
        }
        popStyle();
        popMatrix();
    
}


void drawSeaweed(){
    stroke(25, 166, 25);
    randomSeed(99); // Locks the random pattern so the seaweed never moves
   
    
    // Generates 150 unique, static strands across 0 to 1200 width
    for (int i = 0; i < 300; i++) {
        float x1 = random(0, 1200);
        float y1 = random(675, 700);
        float x2 = x1 + random(-10, 10); // Slight angle tilt
        float y2 = random(600, 645);
        
        line(x1, y1, x2, y2);
    }
}
void drawBubbles(){
    //Red Bubble
    stroke(255, 38, 38);
    noFill();
    ellipse(50, 400, 50, 50);
    arc(52, 395, 25, 25,PI+HALF_PI, TWO_PI);
    ellipse(700, 100, 50,50);
    arc(702, 95, 25, 25,PI+HALF_PI, TWO_PI);
    ellipse(400, 200, 30, 30);
    arc(402, 197, 15, 15,PI+HALF_PI, TWO_PI);
    ellipse(650, 500, 30, 30);
    arc(652, 497, 15, 15,PI+HALF_PI, TWO_PI);
    ellipse(800, 400, 50, 50);
    arc(802, 395, 25, 25,PI+HALF_PI, TWO_PI);
    ellipse(1025, 350, 50,50);
    arc(1027, 345, 25, 25,PI+HALF_PI, TWO_PI);
    
    
    //Blue Bubble
    stroke(38, 132, 255);
    noFill();
    ellipse(100, 100, 50, 50);
    arc(102, 95, 25, 25,PI+HALF_PI, TWO_PI);
    ellipse(600, 400, 50,50);
    arc(602, 395, 25, 25,PI+HALF_PI, TWO_PI);
    ellipse(400, 400, 30, 30);
    arc(402, 397, 15, 15,PI+HALF_PI, TWO_PI);
    ellipse(750, 200, 30, 30);
    arc(752, 197, 15, 15,PI+HALF_PI, TWO_PI);
    ellipse(900, 450, 50, 50);
    arc(897, 445, 25, 25,PI+HALF_PI, TWO_PI);
    ellipse(1050, 200, 50,50);
    arc(1047, 195, 25, 25,PI+HALF_PI, TWO_PI);
    
    //Green Bubble
    stroke(0, 217, 12);
    noFill();
    ellipse(200, 300, 50, 50);
    arc(202, 295, 25, 25,PI+HALF_PI, TWO_PI);
    ellipse(500, 100, 50,50);
    arc(502, 95, 25, 25,PI+HALF_PI, TWO_PI);
    ellipse(50, 250, 30, 30);
    arc(52, 247, 15, 15,PI+HALF_PI, TWO_PI);
    ellipse(80, 500, 30,30);
    arc(82, 497, 15, 15,PI+HALF_PI, TWO_PI);
    ellipse(950, 575, 30, 30);
    arc(952, 572, 15, 15,PI+HALF_PI, TWO_PI);
    ellipse(1000, 100, 30, 30);
    arc(1002, 97, 15, 15,PI+HALF_PI, TWO_PI);
    //Orange Bubble
    stroke(255, 161, 26);
    noFill();
    ellipse(300, 200, 70, 70);
    arc(303, 193, 35, 35,PI+HALF_PI, TWO_PI);
    ellipse(700, 550, 70,70);
    arc(703, 543, 35, 35,PI+HALF_PI, TWO_PI);
    ellipse(150, 475, 30, 30);
    arc(152, 472, 15, 15,PI+HALF_PI, TWO_PI);
    ellipse(400, 500, 30,30);
    arc(402, 497, 15, 15,PI+HALF_PI, TWO_PI);
    ellipse(1150, 375, 30, 30);
    arc(1147, 372, 15, 15,PI+HALF_PI, TWO_PI);
    ellipse(925, 250, 30, 30);
    arc(927, 247, 15, 15,PI+HALF_PI, TWO_PI);
    //Yellow Bubble
    stroke(253, 255, 59);
    noFill();
    ellipse(20, 355, 30, 30);
    arc(22, 352, 15, 15,PI+HALF_PI, TWO_PI);
    ellipse(200, 550, 50, 50);
    arc(202, 545, 25, 25,PI+HALF_PI, TWO_PI);
    ellipse(350, 80, 50, 50);
    arc(352, 75, 25, 25,PI+HALF_PI, TWO_PI);
    ellipse(625, 300, 30, 30);
    arc(627, 297, 15, 15,PI+HALF_PI, TWO_PI);
    ellipse(865, 115, 50, 50);
    arc(867, 110, 25, 25,PI+HALF_PI, TWO_PI);
    ellipse(1075, 315, 30, 30);
    arc(1077, 312, 15, 15,PI+HALF_PI, TWO_PI);
    

}
void drawSand(){
    randomSeed(42);
    stroke(0,0,0);
    for (int i = 0; i < 500; i++) {
        point(random(0, 1200), random(650, 800));
    }
 

}
void drawEvenFlower(){
    //Flowers
    noFill();
    

    //Petal
    beginShape();
    curveVertex(180,  200);
    curveVertex(180,  200);
    curveVertex(160,  100);
    curveVertex(240,  100);
    curveVertex(220, 200);
    curveVertex(220, 200);
    endShape();

    //Curve
    beginShape();
    curveVertex(180, 200);
    curveVertex(180, 200);
    curveVertex(190, 230);
    curveVertex(185, 240);
    curveVertex(167.32986, 227.18182);
    curveVertex(167.32986, 227.18182);
    endShape();

    //Petal
    pushMatrix();
    translate(180, 200);
    rotate(radians(-65));
    beginShape();
    curveVertex(-70,   0);  
    curveVertex(-70,   0);
    curveVertex(-90,  -100);  
    curveVertex( -10,  -100);  
    curveVertex( -30,   0);  
    curveVertex( -30,   0);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(150.41328, 263.44284);
    curveVertex(150.41328, 263.44284);
    curveVertex(170,  266);
    curveVertex(180,  275);
    curveVertex(162.68, 287.23);
    curveVertex(162.68, 287.23);
    endShape();
    
    //Petal
    pushMatrix();
    translate(220, 200);
    rotate(radians(-130));
    beginShape();
    curveVertex(-70,   -100);  
    curveVertex(-70,   -100);
    curveVertex(-90,  -200); 
    curveVertex( -10,  -200);  
    curveVertex( -30,   -100);  
    curveVertex( -30,   -100);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(188.39, 317.90);
    curveVertex(188.39, 317.90);
    curveVertex(195,  310.90);
    curveVertex(205,  310.90);
    curveVertex(211.61, 317.90);
    curveVertex(211.61, 317.90);
    endShape();

    //Petal
    pushMatrix();
    translate(180, 200);
    scale(-1,1);
    rotate(radians(-130));
    beginShape();
    curveVertex(-70,   -100);  
    curveVertex(-70,   -100);
    curveVertex(-90,  -200);  
    curveVertex( -10,  -200);  
    curveVertex( -30,   -100);  
    curveVertex( -30,   -100);
    endShape();
    popMatrix();
  
    
    //Curve
    beginShape();
    curveVertex(237.32, 287.23);
    curveVertex(237.32, 287.23);
    curveVertex(225,  275);
    curveVertex(230,  266);
    curveVertex(249.58, 263.44);
    curveVertex(249.58, 263.44);
    endShape();


    //Petal
    pushMatrix();
    translate(220, 200);
    scale(-1,1);
    rotate(radians(-65));
    beginShape();
    curveVertex(-70,   0);  
    curveVertex(-70,   0);
    curveVertex(-90,  -100);  
    curveVertex( -10,  -100);  
    curveVertex( -30,   0);  
    curveVertex( -30,   0);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(220, 200);
    curveVertex(220, 200);
    curveVertex(210, 230);
    curveVertex(215, 240);
    curveVertex(233.32986, 227.18182);
    curveVertex(233.32986, 227.18182);
    endShape();

    //Inner Circle
    ellipse(200, 265, 30, 20);
}
void drawOddFlower1(){

     //Flowers
    noFill();
    

    //Petal
    beginShape();
    curveVertex(180,  200);
    curveVertex(180,  200);
    curveVertex(110,  100);
    curveVertex(240,  100);
    curveVertex(220, 200);
    curveVertex(220, 200);
    endShape();

    //Curve
    beginShape();
    curveVertex(180, 200);
    curveVertex(180, 200);
    curveVertex(190, 230);
    curveVertex(185, 240);
    curveVertex(167.32986, 227.18182);
    curveVertex(167.32986, 227.18182);
    endShape();

    //Petal
    pushMatrix();
    translate(180, 200);
    rotate(radians(-65));
    beginShape();
    curveVertex(-70,   0);  
    curveVertex(-70,   0);
    curveVertex(-110,  -100);  
    curveVertex( -10,  -100);  
    curveVertex( -30,   0);  
    curveVertex( -30,   0);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(150.41328, 263.44284);
    curveVertex(150.41328, 263.44284);
    curveVertex(170,  266);
    curveVertex(180,  275);
    curveVertex(162.68, 287.23);
    curveVertex(162.68, 287.23);
    endShape();
    
    //Petal
    pushMatrix();
    translate(220, 200);
    rotate(radians(-130));
    beginShape();
    curveVertex(-70,   -100);  
    curveVertex(-70,   -100);
    curveVertex(-130,  -200); 
    curveVertex( 0,  -200);  
    curveVertex( -30,   -100);  
    curveVertex( -30,   -100);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(188.39, 317.90);
    curveVertex(188.39, 317.90);
    curveVertex(195,  310.90);
    curveVertex(205,  310.90);
    curveVertex(211.61, 317.90);
    curveVertex(211.61, 317.90);
    endShape();

    //Petal
    pushMatrix();
    translate(180, 200);
    scale(-1,1);
    rotate(radians(-130));
    beginShape();
    curveVertex(-70,   -100);  
    curveVertex(-70,   -100);
    curveVertex(-90,  -190);  
    curveVertex( 10,  -200);  
    curveVertex( -30,   -100);  
    curveVertex( -30,   -100);
    endShape();
    popMatrix();
  
    
    //Curve
    beginShape();
    curveVertex(237.32, 287.23);
    curveVertex(237.32, 287.23);
    curveVertex(225,  275);
    curveVertex(230,  266);
    curveVertex(249.58, 263.44);
    curveVertex(249.58, 263.44);
    endShape();


    //Petal
    pushMatrix();
    translate(220, 200);
    scale(-1,1);
    rotate(radians(-65));
    beginShape();
    curveVertex(-70,   0);  
    curveVertex(-70,   0);
    curveVertex(-120,  -100);  
    curveVertex( -10,  -100);  
    curveVertex( -30,   0);  
    curveVertex( -30,   0);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(220, 200);
    curveVertex(220, 200);
    curveVertex(210, 230);
    curveVertex(215, 240);
    curveVertex(233.32986, 227.18182);
    curveVertex(233.32986, 227.18182);
    endShape();

    //Inner Circle
    ellipse(200, 265, 30, 20);
}
void drawOddFlower2(){

     //Flowers
    noFill();
    

    //Petal
    beginShape();
    curveVertex(180,  200);
    curveVertex(180,  200);
    curveVertex(160,  100);
    curveVertex(230,  100);
    curveVertex(220, 200);
    curveVertex(220, 200);
    endShape();

    //Curve
    beginShape();
    curveVertex(180, 200);
    curveVertex(180, 200);
    curveVertex(190, 230);
    curveVertex(185, 240);
    curveVertex(167.32986, 227.18182);
    curveVertex(167.32986, 227.18182);
    endShape();

    //Petal
    pushMatrix();
    translate(180, 200);
    rotate(radians(-65));
    beginShape();
    curveVertex(-70,   0);  
    curveVertex(-70,   0);
    curveVertex(-90,  -100);  
    curveVertex( 20,  -100);  
    curveVertex( -30,   0);  
    curveVertex( -30,   0);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(150.41328, 263.44284);
    curveVertex(150.41328, 263.44284);
    curveVertex(170,  266);
    curveVertex(180,  275);
    curveVertex(162.68, 287.23);
    curveVertex(162.68, 287.23);
    endShape();
    
    //Petal
    pushMatrix();
    translate(220, 200);
    rotate(radians(-130));
    beginShape();
    curveVertex(-70,   -100);  
    curveVertex(-70,   -100);
    curveVertex(-90,  -200); 
    curveVertex( -10,  -180);  
    curveVertex( -30,   -100);  
    curveVertex( -30,   -100);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(188.39, 317.90);
    curveVertex(188.39, 317.90);
    curveVertex(195,  310.90);
    curveVertex(205,  310.90);
    curveVertex(211.61, 317.90);
    curveVertex(211.61, 317.90);
    endShape();

    //Petal
    pushMatrix();
    translate(180, 200);
    scale(-1,1);
    rotate(radians(-130));
    beginShape();
    curveVertex(-70,   -100);  
    curveVertex(-70,   -100);
    curveVertex(-90,  -200);  
    curveVertex( 0,  -200);  
    curveVertex( -30,   -100);  
    curveVertex( -30,   -100);
    endShape();
    popMatrix();
  
    
    //Curve
    beginShape();
    curveVertex(237.32, 287.23);
    curveVertex(237.32, 287.23);
    curveVertex(225,  275);
    curveVertex(230,  266);
    curveVertex(249.58, 263.44);
    curveVertex(249.58, 263.44);
    endShape();


    //Petal
    pushMatrix();
    translate(220, 200);
    scale(-1,1);
    rotate(radians(-65));
    beginShape();
    curveVertex(-70,   0);  
    curveVertex(-70,   0);
    curveVertex(-100,  -100);  
    curveVertex( -10,  -100);  
    curveVertex( -30,   0);  
    curveVertex( -30,   0);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(220, 200);
    curveVertex(220, 200);
    curveVertex(210, 230);
    curveVertex(215, 240);
    curveVertex(233.32986, 227.18182);
    curveVertex(233.32986, 227.18182);
    endShape();

    //Inner Circle
    ellipse(200, 265, 30, 20);
}
void drawOddFlower3(){

     //Flowers
    noFill();
    

    //Petal
    beginShape();
    curveVertex(180,  200);
    curveVertex(180,  200);
    curveVertex(160,  125);
    curveVertex(240,  100);
    curveVertex(220, 200);
    curveVertex(220, 200);
    endShape();

    //Curve
    beginShape();
    curveVertex(180, 200);
    curveVertex(180, 200);
    curveVertex(190, 230);
    curveVertex(185, 240);
    curveVertex(167.32986, 227.18182);
    curveVertex(167.32986, 227.18182);
    endShape();

    //Petal
    pushMatrix();
    translate(180, 200);
    rotate(radians(-65));
    beginShape();
    curveVertex(-70,   0);  
    curveVertex(-70,   0);
    curveVertex(-90,  -100);  
    curveVertex( 10,  -100);  
    curveVertex( -30,   0);  
    curveVertex( -30,   0);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(150.41328, 263.44284);
    curveVertex(150.41328, 263.44284);
    curveVertex(170,  266);
    curveVertex(180,  275);
    curveVertex(162.68, 287.23);
    curveVertex(162.68, 287.23);
    endShape();
    
    //Petal
    pushMatrix();
    translate(220, 200);
    rotate(radians(-130));
    beginShape();
    curveVertex(-70,   -100);  
    curveVertex(-70,   -100);
    curveVertex(-40,  -200); 
    curveVertex( 20,  -200);  
    curveVertex( -30,   -100);  
    curveVertex( -30,   -100);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(188.39, 317.90);
    curveVertex(188.39, 317.90);
    curveVertex(195,  310.90);
    curveVertex(205,  310.90);
    curveVertex(211.61, 317.90);
    curveVertex(211.61, 317.90);
    endShape();

    //Petal
    pushMatrix();
    translate(180, 200);
    scale(-1,1);
    rotate(radians(-130));
    beginShape();
    curveVertex(-70,   -100);  
    curveVertex(-70,   -100);
    curveVertex(-120,  -200);  
    curveVertex(-30,  -200);  
    curveVertex( -30,   -100);  
    curveVertex( -30,   -100);
    endShape();
    popMatrix();
  
    
    //Curve
    beginShape();
    curveVertex(237.32, 287.23);
    curveVertex(237.32, 287.23);
    curveVertex(225,  275);
    curveVertex(230,  266);
    curveVertex(249.58, 263.44);
    curveVertex(249.58, 263.44);
    endShape();


    //Petal
    pushMatrix();
    translate(220, 200);
    scale(-1,1);
    rotate(radians(-65));
    beginShape();
    curveVertex(-70,   0);  
    curveVertex(-70,   0);
    curveVertex(-90,  -100);  
    curveVertex( -10,  -100);  
    curveVertex( -30,   0);  
    curveVertex( -30,   0);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(220, 200);
    curveVertex(220, 200);
    curveVertex(210, 230);
    curveVertex(215, 240);
    curveVertex(233.32986, 227.18182);
    curveVertex(233.32986, 227.18182);
    endShape();

    //Inner Circle
    ellipse(200, 265, 30, 20);
}
void drawOddFlower4(){

     //Flowers
    noFill();
    

    //Petal
    beginShape();
    curveVertex(180,  200);
    curveVertex(180,  200);
    curveVertex(160,  100);
    curveVertex(240,  125);
    curveVertex(220, 200);
    curveVertex(220, 200);
    endShape();

    //Curve
    beginShape();
    curveVertex(180, 200);
    curveVertex(180, 200);
    curveVertex(190, 230);
    curveVertex(185, 240);
    curveVertex(167.32986, 227.18182);
    curveVertex(167.32986, 227.18182);
    endShape();

    //Petal
    pushMatrix();
    translate(180, 200);
    rotate(radians(-65));
    beginShape();
    curveVertex(-70,   0);  
    curveVertex(-70,   0);
    curveVertex(-90,  -100);  
    curveVertex( 30,  -120);  
    curveVertex( -30,   0);  
    curveVertex( -30,   0);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(150.41328, 263.44284);
    curveVertex(150.41328, 263.44284);
    curveVertex(170,  266);
    curveVertex(180,  275);
    curveVertex(162.68, 287.23);
    curveVertex(162.68, 287.23);
    endShape();
    
    //Petal
    pushMatrix();
    translate(220, 200);
    rotate(radians(-130));
    beginShape();
    curveVertex(-70,   -100);  
    curveVertex(-70,   -100);
    curveVertex(-130,  -200); 
    curveVertex( -10,  -200);  
    curveVertex( -30,   -100);  
    curveVertex( -30,   -100);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(188.39, 317.90);
    curveVertex(188.39, 317.90);
    curveVertex(195,  310.90);
    curveVertex(205,  310.90);
    curveVertex(211.61, 317.90);
    curveVertex(211.61, 317.90);
    endShape();

    //Petal
    pushMatrix();
    translate(180, 200);
    scale(-1,1);
    rotate(radians(-130));
    beginShape();
    curveVertex(-70,   -100);  
    curveVertex(-70,   -100);
    curveVertex(-90,  -200);  
    curveVertex( -10,  -200);  
    curveVertex( -30,   -100);  
    curveVertex( -30,   -100);
    endShape();
    popMatrix();
  
    
    //Curve
    beginShape();
    curveVertex(237.32, 287.23);
    curveVertex(237.32, 287.23);
    curveVertex(225,  275);
    curveVertex(230,  266);
    curveVertex(249.58, 263.44);
    curveVertex(249.58, 263.44);
    endShape();


    //Petal
    pushMatrix();
    translate(220, 200);
    scale(-1,1);
    rotate(radians(-65));
    beginShape();
    curveVertex(-70,   0);  
    curveVertex(-70,   0);
    curveVertex(-90,  -80);  
    curveVertex( -10,  -100);  
    curveVertex( -30,   0);  
    curveVertex( -30,   0);
    endShape();
    popMatrix();

    //Curve
    beginShape();
    curveVertex(220, 200);
    curveVertex(220, 200);
    curveVertex(210, 230);
    curveVertex(215, 240);
    curveVertex(233.32986, 227.18182);
    curveVertex(233.32986, 227.18182);
    endShape();

    //Inner Circle
    ellipse(200, 265, 30, 20);
}

void drawFlowersBG(){
    pushMatrix();
    translate(200, 250);
    strokeWeight(4);
    stroke(255, 128, 236);
    scale(0.40);
    drawEvenFlower();
    popMatrix();

    pushMatrix();
    translate(1100, 60);
    strokeWeight(4);
    stroke(197, 84, 255);
    scale(0.20);
    drawEvenFlower();
    popMatrix();

    pushMatrix();
    translate(100, 100);
    strokeWeight(4);
    stroke(255, 128, 236);
    scale(0.20);
    drawOddFlower1();
    popMatrix();

    pushMatrix();
    translate(500, 500);
    strokeWeight(4);
    stroke(197, 84, 255);
    scale(0.30);
    drawOddFlower1();
    popMatrix();

    pushMatrix();
    translate(300, 500);
    strokeWeight(4);
    stroke(255, 128, 236);
    scale(0.20);
    drawOddFlower2();
    popMatrix();

    pushMatrix();
    translate(850, 100);
    strokeWeight(4);
    stroke(197, 84, 255);
    scale(0.30);
    drawOddFlower2();
    popMatrix();

    pushMatrix();
    translate(450, 200);
    strokeWeight(4);
    stroke(197, 84, 255);
    scale(0.20);
    drawOddFlower3();
    popMatrix();

    pushMatrix();
    translate(1000, 400);
    stroke(255, 128, 236);
    scale(0.50);
    strokeWeight(4);
    drawOddFlower3();
    popMatrix();

    pushMatrix();
    translate(850, 500);
    stroke(197, 84, 255);
    scale(0.20);
    strokeWeight(4);
    drawOddFlower4();
    popMatrix();
    

    pushMatrix();
    translate(650, 200);
    stroke(255, 128, 236);
    scale(0.40);
    strokeWeight(4);
    drawOddFlower4();
    popMatrix();

}
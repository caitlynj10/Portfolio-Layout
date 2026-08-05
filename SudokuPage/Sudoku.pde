SudokuGame engine;

int[][] displayBoard;
int [][] fullBoard;
int cellSize = 70;

int selectedRow = -1;
int selectedCol = -1;
int selectedNumber = 0;
float sWidth = 630;
float sHeight = 690;
boolean gameStarted = false;
boolean gameWon = false;
String difficulty = "";
int errors = 0;
PFont garamond;
int startTime;
int elapsedTime;
int seconds;
int gameTime;





void setupSudoku() {
   // 9 cells * 60px
  engine = new SudokuGame();
  
  fullBoard = engine.createBoard();
  displayBoard = new int[9][9];
  difficulty = "Easy";
  
  engine.copyBoard(displayBoard, fullBoard);
  engine.easyBoard(displayBoard);
  startTime = millis();
  elapsedTime = 0;
  garamond = createFont("Garamond", 128);

  
}

void drawSudoku() {
    pushMatrix();
    pushStyle();
    translate(435,50);
    
  if(!gameStarted){
    startGame();
  }
  else{
    
    if(engine.completedBoard(displayBoard, fullBoard)){
      gameWon = true;
    }
    
    textAlign(CENTER,CENTER);
    textFont(garamond);
    //background(255, 229, 240);
    int sx = mouseX - 435;
    int sy = mouseY - 50;
    textSize(20);

    noFill();
    stroke(201, 149, 0);
    rect(-200,300,100,50, 28);
    textAlign(CENTER,CENTER);
    textSize(20);
    text("Hint", -150, 325);
    if(sx > -200 && sx < -100 && sy > 300 && sy < 350){
      fill(255, 218, 112);
      rect(-200,300,100,50, 28);
      fill(0);
      text("Hint", -150, 325);
    }

    noFill();
    stroke(255, 0, 0);
    rect(-210,400,120,50, 28);
    textAlign(CENTER,CENTER);
    textSize(20);
    text("End Game", -150, 425);
    if(sx > -210 && sx < -90 && sy > 400 && sy < 450){
      fill(255, 110, 110);
      rect(-210,400,120,50, 28);
      fill(0);
      text("End Game", -150, 425);
    }



    textSize(40);
    fill(0);
    if(!gameWon){
      elapsedTime = (millis() - startTime) / 1000;
    }

    int minutes = elapsedTime / 60;
    int seconds = elapsedTime % 60;

    text("Time: " + nf(minutes, 2) + ":" + nf(seconds, 2), 750, 100);
      
    text("Errors: ", 720, 150);
    fill(255, 0, 0);
    text(errors, 800, 150);
    



    textAlign(CENTER,CENTER);
    textSize(40);
    if(difficulty.equals("Easy")){
      fill(12,140,0);
      text(difficulty, sWidth/2, 25);
    }
    if(difficulty.equals("Medium")){
      fill(224, 123, 0);
      text(difficulty, sWidth/2, 25);
    }
    if(difficulty.equals("Hard")){
      fill(255, 0, 0);
      text(difficulty, sWidth/2, 25);
    }
    
    
    highlightSelected();
    drawGrid();
    drawNumbers();
    displayNumbers();

    

    if(gameWon){
    gameEnded();
    }
  }

 

  popStyle();  
  popMatrix();
 
}



void startGame(){
    int sx = mouseX - 435;
    int sy = mouseY - 50;

  //background(255, 229, 240);
  stroke(0);
  strokeWeight(2);

  textFont(garamond);
  textAlign(CENTER, TOP);
  textSize(70);
  text("Play Sudoku", sWidth/2, 40);
  
  fill(255, 176, 214);
  rect(sWidth/2 - 150, 220, 300, 100, 28);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(40);
  text("Start Game", sWidth/2, 270);

  if(sx > sWidth/2 - 150 && sx < sWidth/2 + 150 && sy > 220 && sy < 320){
      fill(255, 87, 162);
      rect(sWidth/2 - 150, 220, 300, 100, 28);
      fill(0);
      textAlign(CENTER, CENTER);
      textSize(40);
      text("Start Game", sWidth/2, 270);
  }

  if(difficulty.equals("Easy")){
    fill(255, 87, 162);
  }
  else{
    fill(255, 176, 214);
  }
  rect(sWidth/2 - 260, 430, 140, 70, 28);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Easy", sWidth/2 - 190, 465);

  if(difficulty.equals("Medium")){
    fill(255, 87, 162);
  }
  else{
    fill(255, 176, 214);
  }
  rect(sWidth/2 - 70, 430, 140, 70, 28);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Medium", sWidth/2, 465);

  if(difficulty.equals("Hard")){
    fill(255, 87, 162);
  }
  else{
    fill(255, 176, 214);
  }
  rect(sWidth/2 + 120, 430, 140, 70, 28);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Hard", sWidth/2 + 190, 465);
 
}

void gameEnded(){
  textFont(garamond);
  stroke(0, 110, 0);
  strokeWeight(4);
  fill(140, 255, 140);
  rect(sWidth/2 - 200, 195, 400, 300, 20);
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(255, 0, 0);
  text("Puzzle Complete!", sWidth/2, 260);

  fill(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Total Errors: " + errors, sWidth/2, 320);
  
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Press Enter to Play Again", sWidth/2, 450);
}

void setGameDifficulty(int [][] board){
    int sx = mouseX - 435;
    int sy = mouseY - 50;
  
  if(sx > sWidth/2 - 260 && sx < sWidth/2 - 120 && sy > 430 && sy < 500){
    engine.copyBoard(board, fullBoard);
    difficulty = "Easy";
    engine.easyBoard(board);
  }
  else if(sx > sWidth/2 - 70 && sx < sWidth/2 + 70 && sy > 430 && sy < 500){
    engine.copyBoard(board, fullBoard);
    difficulty = "Medium";
    engine.mediumBoard(board);
  }
  else if(sx > sWidth/2 + 120 && sx < sWidth/2 + 260 && sy > 430 && sy < 500){
    engine.copyBoard(board, fullBoard);
    difficulty = "Hard";
    engine.hardBoard(board);
  }
  
}

void drawGrid() {
  stroke(0);
  for (int i = 0; i <= 9; i++) {
    if (i % 3 == 0) {
      strokeWeight(4);
    } else {
      strokeWeight(1);
    }
    line(i * cellSize, 50, i * cellSize, 680);
    line(0, i * cellSize + 50, sWidth, i * cellSize + 50);
  }
}

void drawNumbers() {
  textAlign(CENTER, CENTER);
  textSize(32);
  
  
  
  for (int row = 0; row < 9; row++) {
    for (int col = 0; col < 9; col++) {
      int value = displayBoard[row][col];
      if (value != 0) {
        if(value != fullBoard[row][col]){
          fill(255, 48, 48);
        }
        else{
          fill(0);
        }
        text(value, col * cellSize + cellSize/2, row * cellSize + cellSize/2 + 50);
      }
    }
  }
}

void displayNumbers(){
  textAlign(CENTER, CENTER);
  textSize(32);
  fill(0);

  float displayX = 650;
  float displayY = 250;
  float buttonSize = 70;
  float gap = 10;

  int sx = mouseX - 435;
  int sy = mouseY - 50;
  for (int i = 1; i <= 9; i++) {
    int row = (i - 1) / 3;
    int col = (i - 1) % 3;

    float x = displayX + col * (buttonSize + gap);
    float y = displayY + row * (buttonSize + gap);
    boolean isHovering = sx > x && sx < x + buttonSize && sy > y && sy < y + buttonSize;
    if(mousePressed && isHovering){
      fill(255, 227, 200);
      noStroke();
      rect(x, y, buttonSize, buttonSize,12);
    }
    
    fill(0); 
    text(i, x + buttonSize/2, y + buttonSize/2);
    noFill();   
    stroke(0);
    strokeWeight(2);
    rect(x,y, buttonSize, buttonSize, 12);
  }
  colorNumbers();
  
}

void colorNumbers() {

  float startX = 650;
  float startY = 250;

  float buttonSize = 70;
  float gap = 10;

  for (int i = 1; i <= 9; i++) {

    boolean completed = false;

    switch(i) {
      case 1: completed = engine.allNums(engine.countOnes(displayBoard, fullBoard)); break;
      case 2: completed = engine.allNums(engine.countTwos(displayBoard, fullBoard)); break;
      case 3: completed = engine.allNums(engine.countThrees(displayBoard, fullBoard)); break;
      case 4: completed = engine.allNums(engine.countFours(displayBoard, fullBoard)); break;
      case 5: completed = engine.allNums(engine.countFives(displayBoard, fullBoard)); break;
      case 6: completed = engine.allNums(engine.countSixes(displayBoard, fullBoard)); break;
      case 7: completed = engine.allNums(engine.countSevens(displayBoard, fullBoard)); break;
      case 8: completed = engine.allNums(engine.countEights(displayBoard, fullBoard)); break;
      case 9: completed = engine.allNums(engine.countNines(displayBoard, fullBoard)); break;
    }

    if (completed) {

      int row = (i - 1) / 3;
      int col = (i - 1) % 3;

      float x = startX + col * (buttonSize + gap);
      float y = startY + row * (buttonSize + gap);

      fill(186);
      stroke(0);
      strokeWeight(2);
      rect(x, y, buttonSize, buttonSize, 12);

      fill(0);
      text(i, x + buttonSize/2, y + buttonSize/2);
    }
  }
}
void mousePressedSudoku() {

    int sx = mouseX - 435;
    int sy = mouseY - 50;
   

  if(!gameStarted){
    setGameDifficulty(displayBoard);

    if(sx > sWidth/2 - 150 && sx < sWidth/2 + 150 && sy > 240 && sy < 340){
      gameStarted = true;
      startTime = millis();
      elapsedTime = 0;
    }
  }
  if(sx > -200 && sx < -100 && sy > 300 && sy < 350){
    giveHint();
  }

  if(sx > -210 && sx < -90 && sy > 400 && sy < 450){
    gameWon = false;
    gameStarted = false;
    selectedRow = -1;
    selectedCol = -1;
    errors = 0;
    fullBoard = engine.createBoard();
    engine.copyBoard(displayBoard, fullBoard);
    difficulty = "Easy";
    engine.easyBoard(displayBoard);
    startTime = millis();
    elapsedTime = 0;
  }

  if (sx >= 0 && sx < sWidth && sy >= 50 && sy < 680) {
    int r = (int)(sy - 50) / cellSize;
    int c = (int)sx / cellSize;
  
    if (r >= 0 && r < 9 && c >= 0 && c < 9) {
      if(displayBoard[r][c] == 0 || displayBoard[r][c] != fullBoard[r][c]){
        if (r == selectedRow && c == selectedCol) {
          selectedRow = -1;
          selectedCol = -1;
        } 
        else {
          selectedRow = r;
          selectedCol = c;
          selectedNumber = 0;
        }
      }

      else if (displayBoard[r][c] != 0) {
        if(displayBoard[r][c] == fullBoard[r][c]){
          if (selectedNumber == displayBoard[r][c]) {
          selectedNumber = 0;
          }
          else{
            selectedNumber = displayBoard[r][c];
          }

        }
         
        selectedRow = -1;
        selectedCol = -1;
      }
      
     }
  } 


  else{
    
    float displayX = 650;
    float displayY = 250;
    float buttonSize = 70;
    float gap = 10;

    if(sx >= displayX && sx < displayX + buttonSize * 3 + gap *2 &&
       sy >= displayY && sy < displayY + buttonSize * 3 + gap *2){

      int row = (int)((sy - displayY) / (buttonSize + gap));
      int col = (int)((sx - displayX) / (buttonSize + gap));

      int clicked = row * 3 + col + 1;
      
      if(selectedRow != -1 && selectedCol != -1){
        
        if(displayBoard[selectedRow][selectedCol] == clicked && displayBoard[selectedRow][selectedCol] != fullBoard[selectedRow][selectedCol]){
          displayBoard[selectedRow][selectedCol] = 0;
        }
        else{
          displayBoard[selectedRow][selectedCol] = clicked;
          if (fullBoard[selectedRow][selectedCol] == clicked) {
            selectedNumber = clicked;
            selectedRow = -1;
            selectedCol = -1;
            
            
          }
          else{
            errors++;
          }

        }
        
      }
      
    }
 
  }
}

void giveHint(){
  if(selectedRow != -1 && selectedCol != -1){
    displayBoard[selectedRow][selectedCol] = fullBoard[selectedRow][selectedCol];
    selectedRow = -1;
    selectedCol = -1;
  }

}

void keyPressed(){
  if(gameWon && key == ENTER){
    gameWon = false;
    gameStarted = false;
    selectedRow = -1;
    selectedCol = -1;
    errors = 0;
    startTime = millis();
    elapsedTime = 0;
    fullBoard = engine.createBoard();
    engine.copyBoard(displayBoard, fullBoard);
    difficulty = "Easy";
    engine.easyBoard(displayBoard);

  }

  if((key == BACKSPACE || key == DELETE) && selectedRow != -1 && selectedCol != -1){
    if(displayBoard[selectedRow][selectedCol] != 0 && displayBoard[selectedRow][selectedCol] != fullBoard[selectedRow][selectedCol]){
      displayBoard[selectedRow][selectedCol] = 0;
      return;
    }

  }
  if (key >= '1' && key <= '9') {
    selectedNumber = key - '0';
    if(selectedRow != -1 && selectedCol != -1){
      if(displayBoard[selectedRow][selectedCol] == selectedNumber && displayBoard[selectedRow][selectedCol] != fullBoard[selectedRow][selectedCol]){
        displayBoard[selectedRow][selectedCol] = 0;
      }
      else{
        displayBoard[selectedRow][selectedCol] = selectedNumber;
        if (fullBoard[selectedRow][selectedCol] == selectedNumber) {
          selectedRow = -1;
          selectedCol = -1;
          
          
        }
        else {
          errors++;
        }

      }
    }
  }
}

void highlightSelected() {
  if (selectedRow != -1 && selectedCol != -1) {
    int val = displayBoard[selectedRow][selectedCol];
    if(val != 0 && val != fullBoard[selectedRow][selectedCol]){
      fill(196, 196, 196);    
    }
    else{
      fill(255, 31, 143);

    }
    
    
    noStroke();
    rect(selectedCol*cellSize, selectedRow * cellSize + 50, cellSize, cellSize);
  }
 
  else if (selectedNumber > 0) {
    
    for (int r = 0; r < 9; r++) {
      for (int c = 0; c < 9; c++) {
        if (displayBoard[r][c] == selectedNumber && displayBoard[r][c] == fullBoard[r][c]) {
          fill(255, 31, 143);
          noStroke();
          rect(c * cellSize, r * cellSize + 50, cellSize, cellSize);
        }
      }
    }
  }
}

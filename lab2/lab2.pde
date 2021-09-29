PImage bg, img1;
float xPos = width;
int counter = 0;
int aniFrame = 0;

void setup() {
  frameRate(60);
  size(800, 600, P2D);
  bg = loadImage("background.jpg");
}

void draw() {
  xPos = xPos - 0.5;
  counter++;
  if (counter == 10)
  {
    counter = 0;
    aniFrame++;
  }
  imageMode(CORNER);
  image(bg, 0, 0, width, height);
  
  walkingAni();
  image(img1, xPos, 115, 153/2, 309/2);
  
  
  if (xPos == 0 - 153/2)
  {
     xPos = width; 
  }
}

void walkingAni(){
   if (aniFrame > 7)
   {
     aniFrame = 0;
   }
   
   if (aniFrame == 0)
   {
     img1 = loadImage("walking/walking1.png");
   }
   else if (aniFrame == 1)
   {
     img1 = loadImage("walking/walking2.png");
   }
   else if (aniFrame == 2)
   {
     img1 = loadImage("walking/walking3.png");
   }
   else if (aniFrame == 3)
   {
     img1 = loadImage("walking/walking4.png");
   }
   else if (aniFrame == 4)
   {
     img1 = loadImage("walking/walking5.png");
   }
   else if (aniFrame == 5)
   {
     img1 = loadImage("walking/walking6.png");
   }
   else if (aniFrame == 6)
   {
     img1 = loadImage("walking/walking7.png");
   }
   else if (aniFrame == 7)
   {
     img1 = loadImage("walking/walking8.png");
   }
}

import controlP5.*;

ControlP5 cp5;

ColorPicker cp;
int s;
void setup() {
    selectInput("Select a file to process:", "fileSelected");
    p5 = new ControlP5(this);
    cp = cp5.addColorPicker("picker")
          .setPosition(60, height-60)
          .setColorValue(color(255, 0, 0, 255))
          ;
    size(500,500);
}

PImage img;
int z;
boolean imageSelected;
float x,y;
Pixel[] pix = new Pixel [width * height];

void fileSelected(File selection) {
    
    if(selection == null) {
        println("Window was closed or the user hit cancel.");
    } 
    else { 
        String file = selection.getAbsolutePath();    
        for (int i = 0; i < file.length(); i++) {  
            int x =  file.indexOf("\\", i);
            if (x!= -1) {   
               z = x;
            }
        }
        String fileImage = file.substring(z + 1);
        println(fileImage);
        img = loadImage(fileImage);
        imageSelected = true; 
    } 
}


void draw() {
    if (imageSelected == true) {
        image(img,0,0);
        // loadPixels();
        
        // for (int i = 0; i < height; i++) {
        //     for (int j = 0; j < width; j++) {
        //         pix[i + j] = new Pixel(new PVector(j,i), pixels[i + j]);
        //     } 
        // }
        
        // for (Pixel p : pix) {
        //     color c = color(204,204,204);    
        //     if (p.col  == c) {
        //         println(p.pos);      
        //     }  
        // }
    }
}

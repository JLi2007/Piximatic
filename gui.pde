/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:toolbarWindow:652321:
  appc.background(230);
  appc.fill(r,g,b);
  appc.stroke(r,g,b);
  appc.rect(10, 75, 380, 20);
  appc.circle(200,150,brushSize*2);
} //_CODE_:toolbarWindow:652321:

synchronized public void win_draw2(PApplet appc, GWinData data) { //_CODE_:window1:719241:
  appc.background(230);
  appc.fill(0);
  appc.textSize(18);
  if(imgurLink != null){
    appc.text(imgurLink, 10, 25);
  }else{
    appc.text("*file sharing does NOT work on school wifi",10,20);
    appc.text("share an image to get access to a link!",10,60);
  }
} //_CODE_:window1:719241:

synchronized public void win_drawHome(PApplet appc, GWinData data) { //_CODE_:homePage:261049:
  appc.background(230);
  appc.image(pixelmaticLogo,-125,-100);
} //_CODE_:homePage:261049:

public void Camera_select(GButton source, GEvent event) { //_CODE_:cameraSelect:424562:
  homePage.close();
  homePage = null;
  showCameraPage = true;
} //_CODE_:cameraSelect:424562:

public void File_select(GButton source, GEvent event) { //_CODE_:fileSelect:698549:
  homePage.close();
  homePage = null;
  showFilePage = true;
} //_CODE_:fileSelect:698549:

public void handleButtonEvents(GButton button, GEvent event){}

public void Take_Photo(GButton source, GEvent event) { 
  takePhoto = true;
} 

public void Red_Change(GSlider source, GEvent event) { //_CODE_:Red:215448:
  r = Red.getValueI();
} //_CODE_:Red:215448:

public void Green_Change(GSlider source, GEvent event) { //_CODE_:Green:673080:
  g = Green.getValueI();
 } //_CODE_:Green:673080:

public void Blue_Change(GSlider source, GEvent event) { //_CODE_:Blue:859104:
  b = Blue.getValueI();
} //_CODE_:Blue:859104:

public void BrushChange(GSlider source, GEvent event) { //_CODE_:Brush_Size:736456:
  brushSize = Brush_Size.getValueI();
} //_CODE_:Brush_Size:736456:

public void Change_Brightness(GSlider source, GEvent event) { //_CODE_:brightness_:516721:
  changeBrightness(Bright.getValueI());
} //_CODE_:brightness_:516721:

public void Change_Hue(GKnob source, GEvent event) { //_CODE_:Huee:883956:
  changeHue(Hue.getValueI());
} //_CODE_:Huee:883956:

public void Change_Saturation(GSlider source, GEvent event) { //_CODE_:Huee:883956:
  changeSaturation(Saturation.getValueF());
} //_CODE_:Huee:883956:

public void Reset_image(GButton source, GEvent event) { //_CODE_:button1:863431:
  resetToOriginal();
  Bright.setLimits(0, -100, 100);
  Hue.setLimits(0.0, -180.0, 180.0);
  Saturation.setLimits(1.0, 0.9, 1.1);
} //_CODE_:button1:863431:

public void Download_image(GButton source, GEvent event) { //_CODE_:button1:863431:
  saveFile();
} //_CODE_:button1:863431:

public void Share_image(GButton source, GEvent event) { //_CODE_:button1:863431:
  saveFile();
  shareFile();
} //_CODE_:button1:863431:

public void Mouse_function_change(GDropList source, GEvent event) { //_CODE_:MouseFunction:863813:
 mouseval = MouseFunction.getSelectedIndex();
} //_CODE_:MouseFunction:863813:


public void Cropped(GButton source, GEvent event) { //_CODE_:Reset:435829:
  if (selectdata[1] == null){
    print("you have not made a selection"); 
  }
  crop(selectdata[0], selectdata[1]);
} //_CODE_:Crop:435829:


public void Add_title(GTextField source, GEvent event) { //_CODE_:title:443414:
  postTitle = title_area.getText(); 
} //_CODE_:title:443414:

public void Add_description(GTextField source, GEvent event) { //_CODE_:title:443414:
  postDescription = description_area.getText(); 
} //_CODE_:title:443414:

// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI_Home(){
  homePage = GWindow.getWindow(this, "HomeScreen", 0, 0, 400, 400, JAVA2D);
  homePage.noLoop();
  homePage.setActionOnClose(G4P.CLOSE_WINDOW);
  homePage.addDrawHandler(this, "win_drawHome");
  cameraSelect = new GButton(homePage, 160, 185, 80, 30);
  cameraSelect.setText("Camera");
  cameraSelect.addEventHandler(this, "Camera_select");
  cameraSelect.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  fileSelect = new GButton(homePage, 159, 136, 80, 30);
  fileSelect.setText("File");
  fileSelect.addEventHandler(this, "File_select");
  fileSelect.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  homePage.loop();
}

public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);

  surface.setTitle("Pixelmatic");
  toolbarWindow = GWindow.getWindow(this, "Pixelmatic Toolbar", 0, 0, 400, 400, JAVA2D);
  toolbarWindow.noLoop();
  toolbarWindow.setActionOnClose(G4P.KEEP_OPEN);
  toolbarWindow.addDrawHandler(this, "win_draw1");

  imgurWindow = GWindow.getWindow(this, "Imgur Link", 0, 500, 400, 100, JAVA2D);
  imgurWindow.noLoop();
  imgurWindow.setActionOnClose(G4P.CLOSE_WINDOW);
  imgurWindow.addDrawHandler(this, "win_draw2");

  Cap = new GButton(toolbarWindow, 250, 100, 80, 30);
  Cap.setText("Take Photo");
  Cap.setLocalColorScheme(GCScheme.RED_SCHEME);
  Cap.addEventHandler(this, "Take_Photo");

  // COLOR GUI START
  Red = new GSlider(toolbarWindow, 25, 25, 100, 40, 10.0);
  Red.setShowValue(true);
  Red.setLimits(0, 0, 255);
  Red.setNbrTicks(255);
  Red.setNumberFormat(G4P.INTEGER, 0);
  Red.setLocalColorScheme(GCScheme.RED_SCHEME);
  Red.setOpaque(false);
  Red.addEventHandler(this, "Red_Change");
  Green = new GSlider(toolbarWindow, 150, 25, 100, 40, 10.0);
  Green.setShowValue(true);
  Green.setLimits(0, 0, 255);
  Green.setNbrTicks(255);
  Green.setNumberFormat(G4P.INTEGER, 0);
  Green.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  Green.setOpaque(false);
  Green.addEventHandler(this, "Green_Change");
  Blue = new GSlider(toolbarWindow, 275, 25, 100, 40, 10.0);
  Blue.setShowValue(true);
  Blue.setLimits(0, 0, 255);
  Blue.setNbrTicks(255);
  Blue.setNumberFormat(G4P.INTEGER, 0);
  Blue.setOpaque(false);
  Blue.addEventHandler(this, "Blue_Change");
  red_label = new GLabel(toolbarWindow, 25, 50, 80, 20);
  red_label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  red_label.setText("Red");
  red_label.setOpaque(false);
  red_label.setLocalColorScheme(GCScheme.RED_SCHEME);
  green_label = new GLabel(toolbarWindow, 150, 50, 80, 20);
  green_label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  green_label.setText("Green");
  green_label.setOpaque(false);
  green_label.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  blue_label = new GLabel(toolbarWindow, 275, 50, 80, 20);
  blue_label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  blue_label.setText("Blue");
  blue_label.setOpaque(false);
  blue_label.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  // COLOR GUI END

  Brush_Size = new GSlider(toolbarWindow, 50, 125, 100, 40, 10.0);
  Brush_Size.setShowValue(true);
  Brush_Size.setLimits(1, 1, 20);
  Brush_Size.setNbrTicks(20);
  Brush_Size.setNumberFormat(G4P.INTEGER, 0);
  Brush_Size.setOpaque(false);
  Brush_Size.addEventHandler(this, "BrushChange");

  // brightness/hue/saturation row
  Bright = new GSlider(toolbarWindow, 25, 200, 100, 40, 10.0);
  Bright.setLimits(0, -100, 100);
  Bright.setNumberFormat(G4P.INTEGER, 0);
  Bright.setOpaque(false);
  Bright.addEventHandler(this, "Change_Brightness");
  Hue = new GKnob(toolbarWindow, 150, 200, 60, 60, 0.8);
  Hue.setTurnRange(110, 70);
  Hue.setTurnMode(GKnob.CTRL_HORIZONTAL);
  Hue.setSensitivity(1);
  Hue.setShowArcOnly(false);
  Hue.setOverArcOnly(false);
  Hue.setIncludeOverBezel(false);
  Hue.setShowTrack(true);
  Hue.setLimits(0.0, -180.0, 180.0);
  Hue.setShowTicks(true);
  Hue.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  Hue.setOpaque(false);
  Hue.addEventHandler(this, "Change_Hue");
  Saturation = new GSlider(toolbarWindow, 275, 200, 100, 40, 10.0);
  Saturation.setLimits(1.0, 0.9, 1.1);
  Saturation.setNumberFormat(G4P.INTEGER, 0);
  Saturation.setOpaque(false);
  Saturation.addEventHandler(this, "Change_Saturation");
  brushSize_label = new GLabel(toolbarWindow, 50, 150, 80, 20);
  brushSize_label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  brushSize_label.setText("Brush Size");
  brushSize_label.setOpaque(false);
  brightness_label = new GLabel(toolbarWindow, 25, 225, 80, 20);
  brightness_label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  brightness_label.setText("Brightness");
  brightness_label.setOpaque(false);
  hue_label = new GLabel(toolbarWindow, 175, 200, 80, 20);
  hue_label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  hue_label.setText("Hue");
  hue_label.setOpaque(false);
  saturation_label = new GLabel(toolbarWindow, 275, 225, 80, 20);
  saturation_label.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  saturation_label.setText("Saturation");
  saturation_label.setOpaque(false);

  MouseFunction = new GDropList(toolbarWindow, 250, 150, 90, 60, 2, 10);
  MouseFunction.setItems(loadStrings("list_mouse_dropdown"), 0);
  MouseFunction.addEventHandler(this, "Mouse_function_change");
  
  Crop = new GButton(toolbarWindow, 250, 310, 80, 30);
  Crop.setText("Crop");
  Crop.setLocalColorScheme(GCScheme.RED_SCHEME);
  Crop.addEventHandler(this, "Cropped");


  // reset/download
  reset_btn = new GButton(toolbarWindow, 25, 275, 80, 30);
  reset_btn.setText("Reset");
  reset_btn.addEventHandler(this, "Reset_image");
  download_btn = new GButton(toolbarWindow, 150, 275, 80, 30);
  download_btn.setText("Download");
  download_btn.addEventHandler(this, "Download_image");

  // share row
  share_btn = new GButton(toolbarWindow, 300, 340, 80, 30);
  share_btn.setText("Share");
  share_btn.addEventHandler(this, "Share_image");
  title_area = new GTextField(toolbarWindow, 25, 325, 250, 30, G4P.SCROLLBARS_NONE);
  title_area.setText("");
  title_area.setPromptText("Add a title to your share");
  title_area.setOpaque(true);
  title_area.addEventHandler(this, "Add_title");
  description_area = new GTextField(toolbarWindow, 25, 360, 250, 30, G4P.SCROLLBARS_NONE);
  description_area.setText("");
  description_area.setPromptText("Add a description to your share");
  description_area.setOpaque(true);
  description_area.addEventHandler(this, "Add_description");

  toolbarWindow.loop();
  imgurWindow.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow toolbarWindow;
GWindow imgurWindow;
GWindow homePage;
GButton Cap;

// home page gui
GButton cameraSelect; 
GButton fileSelect; 
GLabel label; 

// pixelmatic gui
GSlider Red; 
GSlider Green; 
GSlider Blue; 
GSlider Brush_Size; 
GSlider Bright; 
GKnob Hue; 
GSlider Saturation;
GLabel red_label; 
GLabel green_label; 
GLabel blue_label; 
GLabel brushSize_label; 
GLabel brightness_label; 
GLabel hue_label; 
GLabel saturation_label;
GDropList MouseFunction; 
GButton Crop;
GButton reset_btn; 
GButton download_btn; 
GButton share_btn; 
GTextField title_area;
GTextField description_area; 



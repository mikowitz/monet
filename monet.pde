PImage img;

IntDict widths;
IntDict heights;
//widths.set("rouen-1", 657);
//heights.set("rouen-1", 1023);

//widths.set("rouen-2", 977);
//heights.set("rouen-2", 1500);

//widths.set("rouen-3", 976);
//heights.set("rouen-3", 1500);

//widths.set("rouen-4", 1806);
//heights.set("rouen-4", 2818);

JSONArray colors;

String filename = "rouen-4";

void setup() {
  size(961, 1500);
  img = loadImage(filename + ".jpg");
  println(img.width, img.height);
  colorMode(RGB, 255, 255, 255);
}

void draw() {
  noLoop();
  image(img, 0, 0);
  save(filename + "/all.jpg");
  for (int n = 1; n <= 164; n++) {
    image(img, 0, 0);
    drawSplits(float(n));
    save(filename + "/" + round(n) + ".jpg");
    println(n);
  }
  exit();
}

void drawSplits(float n) {
  colors = new JSONArray();
  int sizeW = ceil(width / n);
  int sizeH = ceil(height / n);
  for (int x = 0; x < n; x++) {
    for (int y = 0; y < n; y++) {
      color c = fillSquare(x * sizeW, sizeW, y * sizeH, sizeH);
      //println("Row", x, "Col", y, "Color", c);
      JSONObject square = new JSONObject();
      square.setInt("row", x);
      square.setInt("column", y);
      square.setFloat("red", red(c));
      square.setFloat("green", green(c));
      square.setFloat("blue", blue(c));
      colorMode(HSB, 360, 100, 100);
      square.setFloat("H", round(hue(c)));
      square.setFloat("S", round(saturation(c)));
      square.setFloat("B", round(brightness(c)));
      colorMode(RGB, 255, 255, 255);
      colors.setJSONObject(round(x*n + y), square);
    }
  }
  saveJSONArray(colors, filename + "/" + round(n) + ".json");
}

color fillSquare(int sx, int w, int sy, int h) {
  loadPixels();
  int r = 0;
  int g = 0;
  int b = 0;
  int ct = 0;
  for (int x = sx; x < sx + w & x < width; x++) {
    for (int y = sy; y < sy + h && y < height; y++) {
      int i = y * width + x;
      if (i < pixels.length) {
        r += red(pixels[i]);
        g += green(pixels[i]);
        b += blue(pixels[i]);
        ct++;
      }
    }
  }
  if (ct == 0) { ct = 1; }
  r /= ct;
  g /= ct;
  b /= ct;
  //println(r, g, b);
  color c = color(r, g, b);
  for (int x = sx; x < sx + w && x < width; x++) {
    for (int y = sy; y < sy + h && y < height; y++) {
      int i = y * width + x;
      if (i < pixels.length) {
        pixels[i] = c;
      }
    }
  }
  updatePixels();
  return c;
}

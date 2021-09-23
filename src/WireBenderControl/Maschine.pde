public class Maschine {
  PShape model;
  //float w = 100;
  //float h = 50;
  //float d = 250;
  PVector3 headPosition;
  float headWidth;

  public Maschine(PShape model) {
    this.model = model;
    this.headWidth = 2.5;
    this.headPosition = new PVector3(headWidth, -headWidth, 0.0);
    // print(this.model);
  }

  public void show(PGraphics pg) {
    pg.lights();

    // Feeder
    pg.fill(255, 200, 100, 20);
    pg.pushMatrix();
    pg.rotateY(-HALF_PI);
    pg.translate(-7.5, -7.5, 0);
    //box(d, w, h);
    pg.shape(model, 0, 0);
    pg.popMatrix();

    // BendingHead
    pg.fill(255, 0, 0);
    pg.noStroke();
    pg.pushMatrix();
    pg.translate(headPosition.x, headPosition.y, headPosition.z);
    //sphere(headWidth);
    pg.popMatrix();
  }

  public void bend(float angle) {
  }

  public void switchHeadSide() {
    headPosition.y = headPosition.y * -1;
  }

  public void rotateHead(float angle) {
  }
}

class Cursor{
  Vec3D pos;
  Vec3D vel;
  
  Cursor(){
    pos      = new Vec3D();
    vel      = new Vec3D();
  }
  
  void exist(){
    // 2.35 is an arbitrary number. Ideally, this cursor would function
    // properly regardless of the camera's rotation and distance from the object.
    // Im not sure how to make that happen... 3D interaction with the cursor has
    // been low on my research list. Think of this as a crappy placeholder.
    pos.set( ( mouseX - xMid ) * 2.25, ( mouseY - yMid ) * 2.25, 0 );
  }
  
  void render(){
    pushMatrix();
    translate( pos.x, pos.y, pos.z );
    fill( 1, 0, 0 );
    sphere( 10 );
    popMatrix();
  }
}
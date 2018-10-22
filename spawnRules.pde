void spawnCircle(int numMovers) {
  float radius = min(width, height) * 0.2;
  float sectorAngle = 2*PI / numMovers;
  for (int i = 0; i < numMovers; i++) {
    float currAngle = i * sectorAngle;
    movers[i] = new Mover(width/2 + radius * cos(currAngle), height/2 + radius * sin(currAngle));
  }
}

void spawnRandom(int numMovers) {
  for (int i = 0; i < numMovers; i++) {
    movers[i] = new Mover(random(width), random(height));
  }
}
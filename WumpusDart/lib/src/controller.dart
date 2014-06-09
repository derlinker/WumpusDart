part of wumpuswelt;

class WumpusController  {
  /**
   * Präsentiert das Model
   */
  var game = new WumpusWelt(level);
  /**
   * Präsentiert die View
   */
  final view = new WumpusView();
  
  /**
   * Konstruktor der Wumpuswelt
   * 
   */
  WumpusController() {
    view.startButton.onClick.listen((_) {
      game = new WumpusWelt(level);
      view.generateField(game);
      game.start();
      view.update(game);
    });
    // Steuerung des Spielers
    windows.onKeyDown.listen((KeyboardEvent ev) {
      if (game.finish) return;
      switch (ev.keyCode) {
        case KeyCode.LEFT: game.wumpus.handLeft(); break;
        case KeyCode.RIGHT: game.wumpus.handRight(); break;
        case KeyCode.UP: game.wumpus.handup(); break;
        case KeyCode.DOWN: game.wumpus.handDown(); break;
      }
    });
  }
}
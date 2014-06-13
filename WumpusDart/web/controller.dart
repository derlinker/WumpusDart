import 'dart:html';
import 'model.dart';

class WumpusController  {
  /**
   * Präsentiert das Model
   */
  var game = new WumpusWelt(0,0);
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
      game.lvl = game.lvl + 1;
      switch(game.lvl)  {
        case 1:
           game = new WumpusSpiel(8,1);
           break;
        case 2:
           game = new WumpusSpiel(9,2);
           break;
      }
      view.generateField(game);
      game.ingame = true;
      view.update(game);
    });
    
    
    // Steuerung des Spielers
    windows.onKeyDown.listen((KeyboardEvent ev) {
      if (game.ingame) {
      switch (ev.keyCode) {
        case KeyCode.LEFT: game.wumpus.headLeft(); break;
        case KeyCode.RIGHT: game.wumpus.headRight(); break;
        case KeyCode.UP: game.wumpus.headUp(); break;
        case KeyCode.DOWN: game.wumpus.headDown(); break;
      }
      bewegung();
     }
    });
  }
  
  void bewegung() {
    if(game.keineWand)  {
      view.upate(game);
    }
  }
}
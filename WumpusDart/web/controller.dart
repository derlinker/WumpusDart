library controller;

import 'dart:html';
import 'model.dart';
import 'view.dart';

class WumpusController {
  /**
   * Präsentiert das Model
   */
  var game = new WumpusWelt(4, 1);
  /**
   * Präsentiert die View
   */
  final view = new WumpusView();
  
  /**
   * Konstruktor der Wumpuswelt
   * 
   */
  WumpusController() {
    view.generateField(game);
    view.startbutton.onClick.listen((_) {
      if(game.finished){
        game.lvl = game.lvl + 1;
      }
      switch (game.lvl) {
        case 1:
          game = new WumpusWelt(8, 1);
          break;
        case 2:
          game = new WumpusWelt(9, 2);
          break;
      }
      view.generateField(game);
      game.ingame = true;
      view.update(game);
    });


    // Steuerung des Spielers
    window.onKeyDown.listen((KeyboardEvent ev) {
      if (game.ingame) {
        switch (ev.keyCode) {
          case KeyCode.LEFT:
            game.spieler.links();
            break;
          case KeyCode.RIGHT:
            game.spieler.rechts();
            break;
          case KeyCode.UP:
            game.spieler.hoch();
            break;
          case KeyCode.DOWN:
            game.spieler.runter();
            break;
        }
        view.update(game);
      }
    });
  }

  /**
    * Liefert das Spiel zurück
    */
   WumpusWelt get spiel => game;
}
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
    view.startbutton.onClick.listen((_) {
      if(game.finished){
        game.level = game.level + 1;
      }
      switch (game.level) {
        case 1:
          game = new WumpusWelt(4, 1);
          break;
        case 2:
          game = new WumpusWelt(5, 1);
          break;
      }
      view.generateField(game);
      view.update(game);
    });


    // Steuerung des Spielers
    window.onKeyDown.listen((KeyboardEvent ev) {
        switch (ev.keyCode) {
          case KeyCode.LEFT:
            game.spieler.links();
            print("Links wurde gedrückt.");
            break;
          case KeyCode.RIGHT:
            game.spieler.rechts();
            print("Rechts wurde gedrückt.");
            break;
          case KeyCode.UP:
            game.spieler.hoch();
            print("Hoch wurde gedrückt.");
            break;
          case KeyCode.DOWN:
            game.spieler.runter();
            print("Runter wurde gedrückt.");
            break;
        }
        view.update(game);
    });
  }

  /**
    * Liefert das Spiel zurück
    */
   WumpusWelt get spiel => game;
}
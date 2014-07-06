library controller;

import 'dart:html';
import 'model.dart';
import 'view.dart';


class WumpusController {
  /**
   * Präsentiert das Model
   */
  var game = new WumpusWelt(8, 1);
  /**
   * Präsentiert die View
   */
  final view = new WumpusView();
  
  /**
   * Konstruktor der Wumpuswelt
   * 
   */
  WumpusController() {
    //StartButton wird gedrückt
    view.startbutton.onClick.listen((_) {
    game.spielstatus == false;
    game.level = game.level + 1;

    switch (game.level) {
        case 1:
          game = new WumpusWelt(4, 1);
          break;
        case 2:
          game = new WumpusWelt(4, 1);
          break;
      }
    if(game.spielstatus == true)  {
      view.generateField(game);
      view.update(game);
    }
    });
    
    // Steuerung des Spielers
    window.onKeyDown.listen((KeyboardEvent ev) {
        if (game.spielstatus){
        switch (ev.keyCode) {
          case KeyCode.LEFT:
            game.spieler.links();
            print("Der Spieler bewegt sich nach Links");
            break;
          case KeyCode.RIGHT:
            game.spieler.rechts();
            print("Der Spieler bewegt sich nach Rechts");
            break;
          case KeyCode.UP:
            game.spieler.hoch();
            print("Der Spieler bewegt sich nach Oben");
            break;
          case KeyCode.DOWN:
            game.spieler.runter();
            print("Der Spieler bewegt sich nach Unten");
            break;
        }
        view.update(game);
        }
    });
  }
}
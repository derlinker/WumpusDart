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
    //StartButton wird gedrückt
    view.startbutton.onClick.listen((_) {
    game.level = game.level + 1;

    switch (game.level) {
        case 1:
          game = new WumpusWelt(4, 1);
          break;
        case 2:
          game = new WumpusWelt(4, 1);
          break;
      }
      view.generateField(game);
      view.update(game);
    });
    // EinstellungsButton wird gedrückt
 /*   view.einstellungen.onClick.listen((_){
      //TODO!
      print("Einstellungen wurden gedrückt!");
    });
    // EndeButton wird gedrückt
    view.endebutton.onClick.listen((_){
      //TODO!
      game.stop();
      print("Das Spiel wurde beendet!");
      view.update(game);
    });
    */

    // Steuerung des Spielers
    window.onKeyDown.listen((KeyboardEvent ev) {
        if (game.status){
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
}
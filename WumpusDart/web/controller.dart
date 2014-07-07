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
   */
  WumpusController() {
    //StartButton wird gedrückt
    view.startbutton.onClick.listen((_) {
      game.spielstatus == false;

      switch (game.level) {
        case 1:
          game = new WumpusWelt(4, 1);
          break;
        case 2:
          game = new WumpusWelt(4, 2);
          break;
        case 3:
          game = new WumpusWelt(5, 3);
          break;
        case 4:
          game = new WumpusWelt(5, 4);
          break;
        case 5:
          game = new WumpusWelt(6, 5);
          break;
        case 6:
          game = new WumpusWelt(6, 6);
          break;
        case 7:
          game = new WumpusWelt(4, 7);
          break;
        case 8:
          game = new WumpusWelt(6, 8);
          break;
        case 9:
          game = new WumpusWelt(5, 9);
          break;
        case 10:
          game = new WumpusWelt(4, 10);
          break;
        case 11:
          game = new WumpusWelt(6, 11);
          break;
        case 12:
          game = new WumpusWelt(7, 12);
          break;
        case 13:
          game = new WumpusWelt(7, 13);
          break;
        case 14:
          game = new WumpusWelt(4, 14);
          break;
        case 15:
          game = new WumpusWelt(5, 15);
          break;
        case 16:
          game = new WumpusWelt(7, 16);
          break;
        case 17:
          game = new WumpusWelt(6, 17);
          break;
        case 18:
          game = new WumpusWelt(8, 18);
          break;
      }
      if (game.spielstatus == true) {
        view.generateField(game);
        view.update(game);
      }
    });

    // Steuerung des Spielers
    window.onKeyDown.listen((KeyboardEvent ev) {
      if (game.spielstatus) {
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
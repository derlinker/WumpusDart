library view;

import 'dart:html';
import 'model.dart';


class WumpusView {
  var startbutton = querySelector('#start');
  var gameover = querySelector('#gameover');
  var gewonnen = querySelector('#gewonnen');
  var einstellungen = querySelector('#einstellungen');
  var level = querySelector('#level');
  var game = querySelector('.spielfeld');
  var endebutton = querySelector('#ende');
  var ausgabe = querySelector('#ausgabe');

  /**
   * Präsentiert das Model
   */
  final model = new WumpusWelt(0, 0);

  /** 
  /**
   * Level geschafft
   */
  var finish = querySelector('#finish');

  var spielfeld = querySelector('#spielfeld');

  /**
   * Element with id '#gameover' of the DOM tree.
   * Used to indicate that a game is over.
   */
  final gameover = querySelector('#gameover');
    
  /**
   * Element with id '#reasons' of the DOM tree.
   * Used to indicate why the game entered the game over state.
   */
  final reasons = querySelector('#reasons');
  
  /**
   * Start button of the game.
   */
  HtmlElement get startButton => querySelector('#start');
  */

  /**
   * Aktualiseirt die View bzw. das SpielFeld
   */
  void update(WumpusWelt model) {
    startbutton.innerHtml = "Nächstes Level";
    // gameover.innerHtml = model.gameOver ? "Game Over" : "";

    // Aktualisiert das Feld
    final field = model.field;
    /**for (int row = 0; row < field.length; row++) {
      for (int col = 0; col < field[row].length; col++) {
        final td = game.querySelector("#field_${row}_${col}");
        if (td != null) {
          td.classes.clear();
          for(var s in field[row][col].split(' ')){
            td.classes.add('level');
            if (s == "spieler"){ td.classes.add('spieler'); td.innerHtml = "Spieler"; }
            if (s == "wumpus"){ td.classes.add('wumpus'); td.innerHtml = "Hier ist der Wumpus"; }
            if (s == "grube"){ td.classes.add('grube'); td.innerHtml = "eine Grube";}
            if (s == "luftzug"){ td.classes.add('luftzug'); td.innerHtml = "du spürst einen Luftzug";}
            if (s == "schatz"){ td.classes.add('schatz'); td.innerHtml = "eine Kiste voller Gold";}
            if (s == "gestank"){ td.classes.add('gestank'); td.innerHtml = "du riechst einen Gestank";}
          }
          if (field[row][col] == "level"){ td.innerHtml = "";}
        }
      }
    }*/

    for (int row = 0; row < field.length; row++) {
      for (int col = 0; col < field[row].length; col++) {
        final td = game.querySelector("#field_${row}_${col}");
        if (td != null) {
          td.classes.clear();
          for (var s in field[row][col].split(' ')) {
            td.classes.add('level');
            if (s == "spieler") {
              td.classes.add('spieler');
              td.innerHtml += "Spieler";
              td.style.color = "blue";
            }
            if (s == "wumpus") {
              td.classes.add('wumpus');
              if (s == "spieler") {
                td.classes.add('spieler');
              }
              td.innerHtml = "Spieler ist TOT";
            }
            if (s == "grube") {
              td.classes.add('grube');
              td.innerHtml = "grube ";
              td.style.color = "white";
            }
            if (s == "luftzug") {
              td.classes.add('luftzug');
              td.innerHtml = "luftzug ";
              td.style.color = "white";
            }
            if (s == "schatz") {
              td.classes.add('schatz');
              td.innerHtml = "schatz ";
              td.style.color = "white";
            }
            if (s == "gestank") {
              td.classes.add('gestank');
              td.innerHtml = "gestank ";
              td.style.color = "white";
            }
          }
          if (field[row][col] == "level") {
            td.innerHtml = "";
          }
        }
      }
    }

    //gameover.innerHtml = model.gameOver ? "Game Over" : "";



    /**
    if (model.gameOver) {
          final onfield = model.wumpus.notOnField ? "Der Spieler ist nicht mehr auf dem Spielfeld.<br>" : "";
          reasons.innerHtml = "";
          reasons.innerHtml = "$onfield";
        }
        */

  }


  /**
    *  Erzeugt das Spielfeld als HTML Tabelle (n * n) und fügt die Spielelemente von [model] ein.
    */
  void generateField(WumpusWelt model) {
    final field = model.field;
    String table = "";
    for (int row = 0; row < field.length; row++) {
      table += "<tr>";
      for (int col = 0; col < field[row].length; col++) {
        final assignment = field[row][col];
        final position = "field_${row}_${col}";
        table += "<td id = $position class = '$assignment'></td>";
      }
      table += "</tr>";
    }
    game.innerHtml = table;
  }
}

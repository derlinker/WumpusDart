library view;

import 'dart:html';
import 'model.dart';


class WumpusView {
  var startbutton = querySelector('#start');
  var gameover = querySelector('#gameover');
  var gewonnen = querySelector('#gewonnen');
  var anleitung = querySelector('#anleitung');
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
   * Aktualiseirt die View bzw. das SpielFeld
   */
  void update(WumpusWelt model) {
    if(model.spielstatus == true)  {
      startbutton.style.display = "None";
      endebutton.innerHtml = "Spiel Beenden";
      anleitung.style.display = "None";
    }
      if(model.gewonnen == true)  {
        startbutton.style.display = "inline";
        startbutton.innerHtml = "Nächstes Level";
        endebutton.innerHtml = "Spiel Beenden";
        gameover.innerHtml = "Sie haben Gewonnen!";
      }else if(model.verloren == true)  {
        startbutton.style.display = "inline";
        startbutton.innerHtml = "Neustart";
        endebutton.innerHtml = "Spiel Beenden";
        gameover.innerHtml = "Game Over";
      }else gameover.innerHtml = "";
    
    // Aktualisiert das Feld
    final field = model.field;
    for (int row = 0; row < field.length; row++) {
      for (int col = 0; col < field[row].length; col++) {
        final td = game.querySelector("#field_${row}_${col}");
        if (td != null) {
          td.classes.clear();
          for (var s in field[row][col].split(' ')) {
            td.classes.add('level');
            if (s == "spieler") {
              td.classes.add('spieler');
              if(td.innerHtml !=  "Spieler"){
              td.innerHtml += "Spieler";
              }
            }
            if (s == "wumpus") {
              td.classes.add('wumpus');
              td.innerHtml = "Wumpus tötet den ";
            }
            if (s == "grube") {
              td.classes.add('grube');
              td.innerHtml = "Eine Tiefe Grube für den ";
            }
            if (s == "luftzug") {
              td.classes.add('luftzug');
              td.innerHtml = "Ein Luftzug spürt der ";
            }
            if (s == "schatz") {
              td.classes.add('schatz');
              td.innerHtml = "Goldtruhe findet der ";
            }
            if (s == "gestank") {
              td.classes.add('gestank');
              td.innerHtml = "Ein Geruch für den  ";
            }
          }
          if (field[row][col] == "level") {
            td.innerHtml = "";
          }
        }
      }
    }
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
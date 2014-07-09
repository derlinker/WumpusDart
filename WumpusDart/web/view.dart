library view;

import 'dart:html';
import 'model.dart';


class WumpusView {
  /**
   * querySelectoren für die einzelnen Feler im HTML
   */
  var startbutton = querySelector('#start');
  var gameover = querySelector('#gameover');
  var gewonnen = querySelector('#gewonnen');
  var anleitung = querySelector('#anleitung');
  var level = querySelector('#level');
  var levelnr = querySelector('#levelnr');
  var game = querySelector('.spielfeld');
  var menu = querySelector('.menu');
  var name = querySelector('.name');

  /**
   * Repräsentiert das Model
   */
  var model;

  /**
   * Aktualiseirt die View bzw. das SpielFeld
   */
  void update(WumpusWelt model) {
    if(model.spielstatus == true)  {
      name.innerHtml = "Level-Info";
      startbutton.style.display = "None";
      anleitung.style.display = "None";
      levelnr.style.display = "inline";
      levelnr.innerHtml = model.level.toString();
    }
    //Wenn gewonnen
      if(model.gewonnen == true)  {
        if(model.level > 18){
          startbutton.style.display = "None";
          levelnr.style.display = "None";
          level.style.display = "None";
          name.innerHtml = "Es Danken:";
          gameover.style.display = "inline";
          gameover..innerHtml = "Herzlichen Glückwunsch<br><br>Sie haben gewonnen!";
          game.style.display = "None";
        }else{
        startbutton.style.display = "inline";
        startbutton.innerHtml = "Nächstes Level";
        gameover.innerHtml = "Sie haben Gewonnen!";
        }
     //Wenn verloren
        }else if(model.verloren == true)  {
        startbutton.style.display = "inline";
        startbutton.innerHtml = "Neustart";
        gameover.innerHtml = "Game Over";
      }else gameover.innerHtml = "";
    
    /**
     *  Aktualisiert das Feld
     *  Fügt den Tabellen die CSS Classen hinzu und auf dieser Basis
     *  wird der Inhalt der Zelle genieriert. 
     */
      
    final field = model.field;
    for (int row = 0; row < field.length; row++) {
      for (int col = 0; col < field[row].length; col++) {
        var td = game.querySelector("#field_${row}_${col}");
        if (td != null) {
          td.classes.clear();
          td.innerHtml = '';
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
              if (td.innerHtml != "Wumpus"){
                td.innerHtml = "Wumpus<br>";
              }
            }
            if (s == "grube") {
              td.classes.add('grube');
              if (td.innerHtml != "Grube"){
                td.innerHtml = "Grube<br>";
              }
            }
            if (s == "luftzug") {
              td.classes.add('luftzug');
              if(td.innerHtml != "Luftzug"){
                td.innerHtml += "Luftzug<br>";
              }
            }
            if (s == "schatz") {
              td.classes.add('schatz');
              if (td.innerHtml != "Schatz"){
                td.innerHtml = "Schatz<br>";
              }
            }
            if (s == "gestank") {
              td.classes.add('gestank');
              if (td.innerHtml != "Gestank"){
                td.innerHtml += "Gestank<br>";
              }
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
    *  Erzeugt das Spielfeld als HTML Tabelle und fügt die Spielelemente ein.
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
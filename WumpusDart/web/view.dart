import 'dart:html';
import 'model.dart';

class WumpusView {
  var startbutton = querySelector('#start');
  var gewonnen = querySelector('#gewonnen');
  var level = querySelector('#level');
  var game = querySelector('#wumpuswelt');
 
  
  
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
    if(model.prüfeZiele())  {
      startbutton.innerHtml = "Nächstes Level";
      startbutton.style.display = "inline";
      gewonnen.style.display = "inline";
    } else  {
      startbutton.style.display = "none";
      gewonnen.style.display = "none";
    }
    level.innerHtml = "Level: ${model.lvl}";
    
    // Aktualisiert das Feld
    final field = model.field;
    for (int row = 0; row < field.length; row++) {
      for (int col = 0; col < field[row].length; col++) {
        final td = game.querySelector("#field_${row}_${col}");
        if (td != null) {
          td.classes.clear();
          if (field[row][col] == "weg") td.classes.add('weg'); else if (field[row][col] == "la") td.classes.add('la'); else if (field[row][col] == "wand") td.classes.add('wand'); else if (field[row][col] == "ziel") td.classes.add('ziel'); else if (field[row][col] == "kiste") td.classes.add('kiste'); else if (field[row][col] == "kisteImZiel") td.classes.add('kisteImZiel');
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
  void generateField(WumpusWelt model){
    final field = model.field;
    String table = "";
    for(int row = 0; row < field.length; row++) {
      table += "<tr>";
      for(int col = 0; col < field[row].length; col++) {
        final assignment = field[row][col];
        final position = "field_${row}_${col}";
        table += "<td id = $position' class =$assignment'></td>";
      }
      table+= "</tr>";
    }
    game.innerHtml = table;
  }
}
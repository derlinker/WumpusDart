part of wumpuswelt;

class WumpusView {
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
  
  /**
   * Aktualiseirt die View bzw. das SpielFeld
   */
  void update(WumpusWelt model) {
    
    gameover.innerHtml = model.gameOver ? "Game Over" : "";
    
    /**
     * Spielende
     */
    if (model.gameOver) {
          final onfield = model.wumpus.notOnField ? "Der Spieler ist nicht mehr auf dem Spielfeld.<br>" : "";
          reasons.innerHtml = "";
          reasons.innerHtml = "$onfield";
        }
  }

  void generateField(WumpusWelt model){
    final field = model.loadlevel(1);
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
    spielfeld.innerHtml = table;
  }
}
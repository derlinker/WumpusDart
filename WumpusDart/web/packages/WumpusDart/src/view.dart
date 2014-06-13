part of wumpuswelt;

class WumpusView {
  /**
   * Level geschafft
   */
  var finish = querySelector('#finish');

  var spielfeld = querySelector('#spielfeld');

  /**
   * Start button of the game.
   */
  HtmlElement get startButton => querySelector('#start');
  
  /**
   * Aktualiseirt die View bzw. das SpielFeld
   */
  void update(WumpusWelt model) {
    
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
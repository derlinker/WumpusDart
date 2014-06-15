import "dart:html";

class WumpusWelt {
  //Status des Spiels
  Symbol _gamestatus;
  Player _player;
  int _size, _level;
  
  var _gruben, _wumbus, _gestank, _luftzug, _schatz = [];

  /**
    * Wenn das Spile gestopt wird, aufrufen
    */
   bool get stopped => _gamestatus == #stopped;

   /**
    * Wenn das Spiel gestartet wird, aufrufen
    */
   bool get running => _gamestatus == #running;

   /**
    * Wenn ein Level beendet wurde
    */
   bool get finished => _gamestatus == #finished;

   /**
    * Startet 
    */
   void start() { _gamestatus = #running; }

   /**
    * Stops the game.
    */
   void stop() { _gamestatus = #stopped; }
   
   WumpusWelt(this._size, this._level) {
       start();
       
       stop();
     }
   
   List<List<String>> get field {
     var _field = new Iterable.generate(_size, (row) {
       return new Iterable.generate(_size, (col) => "weg").toList();
     }).toList();
     _gruben.forEach((w) => _field[w._row][w._col] = "wand");
     _wumbus.forEach((z) => _field[z._row][z._col] = "ziel");
     _gestank.forEach((k) => _field[k._row][k._col] = "kiste");
     _luftzug.forEach((k) => _field[k._row][k._col] = "kisteImZiel");
     _schatz[la._row][la._col] = "la";
     _player[p.row][p.col] = "p";
     return _field;
   }
   
   /**
      * Liefert den Spieler zurück
      */
     Player get player => _player;
     
     /**
      * Returns whether the game is over.
      * Game is over, when snake has left the field or is tangled.
      */
     bool get gameOver => _player.notOnField;

     /**
      * Indicates whether the player is on field.
      */
     bool get onField {
       return _player['_row'] >= 0 &&
              _player['_row'] < _game.size &&
              _player['_co1l'] >= 0 &&
              _player['_col'] < _game.size;
     } 
    
    /**
     * Indicates whether the player is not on the field.
     */
    bool get notOnField => !onField;
   
   //Derzeit nicht benutzt
   /**
    * Returns the level of the game. The game is played on a nxn-field.
    */
   int get level => _level;
   
   List<Field> loadlevel(level){
     int x, y;
     List<Field> fields;
    /**
     final level_file = new File(level + '.txt');
     
     String input = level_file.openRead().toString();
    */
     
     String url = "level/1.txt";  
     HttpRequest request = new HttpRequest();
     request.open("GET", url, async : true);
     List<String> list = request.toString().split(';');
     var _size = list.first;
     for(x = 1; x <= _size; x++ ){
       for(y = 1; y <= _size; y++ ){
         var field = new Field(x, y, list.elementAt(x*y).split(','));
         fields.add(field);
       }
     }
     return fields;
   }
   
   void test(){
     var game = new WumpusWelt(1);
     
     print(game.loadlevel(1));
         
   }
 
  
  
}

class Field {
  //Position des Feldes
  int _col;
  int _row;
  
  Field(int col, int row) {
    _col = col;
    _row = row;
  }
  
}
//Der Spieler hat eine Position (x,y)
class Player{
  int _col;
  int _row;

    void hoch() {
      _row--;
    }

    void runter() {
      _row++;
    }

    void links() {
      _col--;
    }

    void rechts() {
      _col++;
    }
  
}


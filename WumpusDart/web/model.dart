library model;
import "dart:html";

class WumpusWelt {
  //Status des Spiels
  String _gamestatus;
  Spieler _player;
  int _size, _level;
  var _wumpus, _schatz;
  List _gruben = new List<Field>();
  List _gestank = new List<Field>();
  List _luftzug = new List<Field>();

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
   void start() { _gamestatus == #running; }

   /**
    * Stops the game.
    */
   void stop() { _gamestatus == #stopped; }
   
   WumpusWelt(this._size, this._level) {
       //start();
       _player._col = 0; _player._row = 0;
       _wumpus = new Field(this._level).erstelleWumpus;
       _schatz = new Field(this._level).erstelleSchatz;
       _gruben = new Field(this._level).erstelleGruben;
       _gestank = new Field(this._level).erstelleGestank;
       _luftzug = new Field(this._level).erstelleLuftzug;
       //stop();
     }
   
   List<List<String>> get _field {
     var _field = new Iterable.generate(_size, (row) {
       return new Iterable.generate(_size, (col) => "weg").toList();
     }).toList();
     _gruben.forEach((w) => _field[w._row][w._col] = "grube");
     _gestank.forEach((g) => _field[g._row][g._col] = "gestank");
     _luftzug.forEach((l) => _field[l._row][l._col] = "luftzug");
     _field[_wumpus._row][_wumpus._col] = "_wumpus";
     _field[_schatz._row][_schatz._col] = "_schatz";
     _field[_player._row][_player._col] = "_player";
     return _field;
   }
   
   List<List<String>> get field => _field;
   
   /**
      * Liefert den Spieler zurück
      */
     Spieler get player => _player;
     
     /**
      * Returns whether the game is over.
      * Game is over, when snake has left the field or is tangled.
      */
     bool get gameOver => 0; //TODO: Überprüfen!
    
    /**
     * Indicates whether the player is not on the field.
     */
    bool get notOnField => !onField;
    
    /**
     * Indicates whether the player is on field.
     */
    bool get onField {
      return _player._row >= 0 &&
          _player._row < this._size &&
          _player._col >= 0 &&
              _player._col < this._size;
    
     }
    
    /**
     * Returns the level of the game. The game is played on a nxn-field.
     */
    int get level => _level;
   
   //Derzeit nicht benutzt

   /**
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
}*/
}

class Field {
  //Position des Feldes
  int _col, _size;
  int _row, _level;
  var _wumpus, _schatz;
  
  List _gruben = new List<Field>();
  List _gestank = new List<Field>();
  List _luftzug = new List<Field>();
  
  Field(this._level){
    
  }
  
  Field.point(this._row, this._col) {
  }
  
  
  List<Field> get erstelleGruben {
    _gruben.add(new Field.point(0, 3));
    _gruben.add(new Field.point(3, 3));
    _gruben.add(new Field.point(4, 4));
    
    return _gruben;
  }
  List<Field> get erstelleGestank {
    _gestank.add(new Field.point(1, 0));
    _gestank.add(new Field.point(2, 1));
    _gestank.add(new Field.point(3, 0));
    return _gestank;
  }
  
  List<Field> get erstelleLuftzug {
    _luftzug.add(new Field.point(0, 1));
    _luftzug.add(new Field.point(0, 3));
    _luftzug.add(new Field.point(1, 2));
    _luftzug.add(new Field.point(2, 1));
    _luftzug.add(new Field.point(2, 3));
    _luftzug.add(new Field.point(3, 2));
    return _luftzug;
  }
  
  Field get erstelleWumpus {
    _wumpus = new Field.point(2,0);
    return _wumpus;
  }
  Field get erstelleSchatz {
    _schatz = new Field.point(2,1);
    return _schatz;
  }
  
}
//Der Spieler hat eine Position (x,y)
class Spieler{
  int _col;
  int _row;
  WumpusWelt _game;
  
  Spieler(game){
    this._game = game;
  }

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
  
    void set col(int col) { _col = col; }
    void set row(int row) { _row = row; }
}
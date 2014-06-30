library model;

class WumpusWelt {
  //Status des Spiels
  String _gamestatus;
  var _spieler;
  bool _status = false;
  int _spielstatus = 0;
  int _size;
  int _level;
  Field _wumpus;
  Field _schatz;
  List _gruben = new List<Field>();
  List _gestank = new List<Field>();
  List _luftzug = new List<Field>();
  
  int get spielstatus => _spielstatus;

   bool get status => _status;
  /**
    * Wenn das Spiel gestopt wird, aufrufen
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
   
   int get level => _level;

   void set level(int level) {
    _level = level;
   }
   
   bool get gewonnen => _status;
   
   
   WumpusWelt(this._size, this._level) {
       _spieler = new Spieler(this);
       _spieler.col = 0;
       _spieler.row = _size-1;
       _wumpus = new Field(this._level).erstelleWumpus;
       _schatz = new Field(this._level).erstelleSchatz;
       _gruben = new Field(this._level).erstelleGruben;
       _gestank = new Field(this._level).erstelleGestank;
       _luftzug = new Field(this._level).erstelleLuftzug;
       _status = true;
       _spielstatus = 0;
     }
   
   List<List<String>> get _field {
     var _field = new Iterable.generate(_size, (row) {
       return new Iterable.generate(_size, (col) => "level").toList();
     }).toList();
      _gestank.forEach((ge) => _field[ge._row][ge._col] += " gestank");
      _gruben.forEach((g) => _field[g._row][g._col] += " grube");
      _luftzug.forEach((l) => _field[l._row][l._col] += " luftzug");
      _field[_wumpus._row][_wumpus._col] += " wumpus";
      _field[_schatz._row][_schatz._col] += " schatz";
      _field[_spieler.getrow][_spieler.getcol] += " spieler";
     return _field;
   }
   
   List<List<String>> get field => _field;
   
   /**
      * Liefert den Spieler zurück
      */
     Spieler get spieler => _spieler;
     
     /**
      * Returns whether the game is over.
      * Game is over, when snake has left the field or is tangled.
      */
   //bool get gameOver => spieler.OnFieldGrube;
     
     /**
     * Indicates whether the player is not on the field.
     */
    bool get notOnField => !onField;
    
    /**
     * Indicates whether the player is on field.
     */
    bool get onField {
      return _spieler.getrow >= 0 &&
             _spieler.getrow < this._size &&
             _spieler.getcol >= 0 &&
             _spieler.getcol < this._size;
    
     }
    
    bool get pruefeEingabe {
      pruefeVerloren();
      pruefeGewonnen();
      if (_spieler.getrow > 3 || _spieler.getrow < 0 ||
          _spieler.getcol > 3 || _spieler.getcol < 0){
        return false;
      }else return true;
    }
    
    void pruefeGewonnen()  {
      if(_spieler.getrow == _schatz._row && _spieler.getcol == _schatz._col){
        _status = false;
        _spielstatus = 1;
        print("gewonennenenenenenenen");
      }
    }
    
    void pruefeVerloren()  {
          if(_spieler.getrow == _wumpus._row && _spieler.getcol == _wumpus._col){
            _status = false;
            _spielstatus = 2;
            print("verlorenennenenenenenenen");
          }
          _gruben.forEach((g){
            if(g._row == _spieler.getrow && g._col == _spieler.getcol){
              _status = false;
              _spielstatus = 2;
              print("verlorennnnnnn");
            }
          });
        }
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
    switch(_level) {
      case 1:
        level1Gruben();
        break;
      case 2:
        level2Gruben();
        break;
    }
    return _gruben;
  }
    
    void level1Gruben() {
      _gruben.add(new Field.point(1, 2));
      _gruben.add(new Field.point(0, 3));
      _gruben.add(new Field.point(3, 2));
    }
    void level2Gruben() {
      _gruben.add(new Field.point(3, 1));
      _gruben.add(new Field.point(3, 2));
      _gruben.add(new Field.point(3, 3));
    }
    
  List<Field> get erstelleGestank {
    switch(_level)  {
      case 1:
        level1Gestank();
        break;
      case 2:
        level2Gestank();
        break;
    }
    return _gestank;
  }
  void level1Gestank(){
    _gestank.add(new Field.point(1, 1));
    _gestank.add(new Field.point(0, 0));
    _gestank.add(new Field.point(2, 0));
  }
  void level2Gestank(){
    _gestank.add(new Field.point(1, 1));
    _gestank.add(new Field.point(0, 0));
    _gestank.add(new Field.point(2, 0));
  }
    
  
  List<Field> get erstelleLuftzug {
    switch(_level)  {
      case 1:
        level1Luftzug();
        break;
      case 2:
        level2Luftzug();
        break;
    }
    return _luftzug;
  }
  
  void level1Luftzug(){
    _luftzug.add(new Field.point(1, 3));
    _luftzug.add(new Field.point(0, 2));
    _luftzug.add(new Field.point(1, 1));
    _luftzug.add(new Field.point(3, 3));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(3, 1));
  }
  
  void level2Luftzug(){
      _luftzug.add(new Field.point(1, 3));
      _luftzug.add(new Field.point(0, 2));
      _luftzug.add(new Field.point(1, 1));
      _luftzug.add(new Field.point(3, 3));
      _luftzug.add(new Field.point(2, 2));
      _luftzug.add(new Field.point(3, 1));
    }
  
  Field get erstelleWumpus {
    switch(_level){
      case 1:
        level1Wumpus();
        break;
      case 2:
        level2Wumpus();
        break;
      }
    return _wumpus;
   }
  void level1Wumpus(){
    _wumpus = new Field.point(1,0);
  }
  
  void level2Wumpus(){
    _wumpus = new Field.point(2,0);
  }
  
  Field get erstelleSchatz {
    switch(_level)  {
      case 1:
        level1Schatz();
        break;
      case 2:
        level2Schatz();
        break;
    }
    return _schatz;
  }
  void level1Schatz(){
    _schatz = new Field.point(1,1);
  }
  
  void level2Schatz(){
    _schatz = new Field.point(1,1);
  }
  
}
//Der Spieler hat eine Position (x,y)
class Spieler{
  int _col;
  int _row;
  bool _schatz = false;
  WumpusWelt _game;
  
  
  Spieler(WumpusWelt game){
    this._game = game;
  }
  

    void hoch() {
      _row--;
      if (_game.pruefeEingabe == false){
        _row++;
      }
    }

    void runter() {
      _row++;
      if (_game.pruefeEingabe == false){
        _row--;
      }
    }

    void links() {
      _col--;
      if (_game.pruefeEingabe == false){
        _col++;
      }
    }

    void rechts() {
      _col++;
      if (_game.pruefeEingabe == false){
        _col--;
      }
    }
    
    int get getcol {
      return this._col;
    }
    
    int get getrow {
      return this._row;
    }
    
    void set col(int col) { _col = col; }
    void set row(int row) { _row = row; }
}
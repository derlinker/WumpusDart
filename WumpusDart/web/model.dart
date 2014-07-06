library model;

import 'field.dart';

class WumpusWelt {
  //Status des Spiels
  var _spieler;
  // Variable für Gewonnen
  bool _gewonnenstatus = false;
  // Variable für Verlieren
  bool _verlierstatus = false;
  // Variable ob das Spiel läuft
  bool _spielstatus = false;
  int _size;
  int _level;
  Field _wumpus;
  Field _schatz;
  List _gruben = new List<Field>();
  List _gestank = new List<Field>();
  List _luftzug = new List<Field>();


  int get level => _level;

   void set level(int level) {
    _level = level;
   }
   
   bool get gewonnen => _gewonnenstatus;
   
   bool get verloren => _verlierstatus;
   
   bool get spielstatus => _spielstatus;
   
   
   WumpusWelt(this._size, this._level) {
       _spieler = new Spieler(this);
       _spieler.col = 0;
       _spieler.row = _size-1;
       _wumpus = new Field(this._level).erstelleWumpus;
       _schatz = new Field(this._level).erstelleSchatz;
       _gruben = new Field(this._level).erstelleGruben;
       _gestank = new Field(this._level).erstelleGestank;
       _luftzug = new Field(this._level).erstelleLuftzug;
       _gewonnenstatus = false;
       _verlierstatus = false;
       _spielstatus = true;
     }
   
   List<List<String>> get _field {
     var _field = new Iterable.generate(_size, (row) {
       return new Iterable.generate(_size, (col) => "level").toList();
     }).toList();
     
      _gestank.forEach((ge) => _field[ge.getRow][ge.getCol] += " gestank");
      _gruben.forEach((g) => _field[g.getRow][g.getCol] += " grube");
      _luftzug.forEach((l) => _field[l.getRow][l.getCol] += " luftzug");
      _field[_wumpus.getRow][_wumpus.getCol] += " wumpus";
      _field[_schatz.getRow][_schatz.getCol] += " schatz";
      _field[_spieler._row][_spieler._col] += " spieler";
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
      if (_spieler.getrow > _size-1 || _spieler.getrow < 0 ||
          _spieler.getcol > _size-1 || _spieler.getcol < 0){
        return false;
      }else return true;
    }
    
    void pruefeGewonnen()  {
      if(_spieler.getrow == _schatz.getRow && _spieler.getcol == _schatz.getCol){
        _gewonnenstatus = true;
                _verlierstatus = false;
                _spielstatus = false;
                print("Sie haben Gewonnen");
      }
    }
    
    void pruefeVerloren()  {
          if(_spieler.getrow == _wumpus.getRow && _spieler.getcol == _wumpus.getCol){
            _gewonnenstatus = false;
                        _verlierstatus = true;
                        _spielstatus = false;
                        print("Sie haben Verloren");
          }
          _gruben.forEach((g){
            if(g.getRow == _spieler.getrow && g.getCol == _spieler.getcol){
              _gewonnenstatus = false;
                            _verlierstatus = true;
                            _spielstatus = false;
                            print("Sie haben Verloren");
            }
          });
        }
}

//Der Spieler hat eine Position (x,y)
class Spieler{
  int _col;
  int _row;
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
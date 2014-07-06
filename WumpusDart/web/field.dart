library level;

var _levelnummer, _size;
Field _wumpus;
Field _schatz;
List _gruben = new List<Field>();
List _gestank = new List<Field>();
List _luftzug = new List<Field>();

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
    //test luftzug
    _luftzug.add(new Field.point(2,  0));
  }
  
  void level2Luftzug(){
      _luftzug.add(new Field.point(1, 3));
      _luftzug.add(new Field.point(0, 2));
      _luftzug.add(new Field.point(1, 1));
      _luftzug.add(new Field.point(3, 3));
      _luftzug.add(new Field.point(2, 2));
      _luftzug.add(new Field.point(3, 1));
      //test luftzug
      _luftzug.add(new Field.point(2,  0));
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
  
  get getRow => _row;
  get getCol => _col;
  
  
}
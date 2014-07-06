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
      case 3:
        level3Gruben();
        break;
      case 4:
        level4Gruben();
        break;
      case 5:
        level5Gruben();
        break;
      case 6:
        level6Gruben();
        break;
      case 7:
        level7Gruben();
        break;
      case 8:
        level8Gruben();
        break;
      case 9:
        level9Gruben();
        break;
      case 10:
        level10Gruben();
        break;
    }
    return _gruben;
  }
    
    void level1Gruben() {
      _gruben.add(new Field.point(1, 2));
      _gruben.add(new Field.point(0, 3));
      _gruben.add(new Field.point(3, 2));
    }
    // (Row (Reihe), Col(Spalte))
    void level2Gruben() {
      _gruben.add(new Field.point(1, 3));
      _gruben.add(new Field.point(2, 2));
      _gruben.add(new Field.point(3, 3));
    }
    void level3Gruben() {
          _gruben.add(new Field.point(0, 4));
          _gruben.add(new Field.point(2, 0));
          _gruben.add(new Field.point(2, 2));
          _gruben.add(new Field.point(4, 2));
          _gruben.add(new Field.point(4, 4));
        }
    void level4Gruben() {
          _gruben.add(new Field.point(0, 4));
          _gruben.add(new Field.point(1, 0));
          _gruben.add(new Field.point(1, 2));
          _gruben.add(new Field.point(3, 3));
        }
    void level5Gruben() {
          _gruben.add(new Field.point(0, 2));
          _gruben.add(new Field.point(1, 0));
          _gruben.add(new Field.point(2, 1));
          _gruben.add(new Field.point(2, 4));
        }
    void level6Gruben() {
              _gruben.add(new Field.point(1, 4));
              _gruben.add(new Field.point(3, 0));
              _gruben.add(new Field.point(3, 2));
              _gruben.add(new Field.point(4, 3));
              _gruben.add(new Field.point(4, 5));
            }
    void level7Gruben(){
          _gruben.add(new Field.point(1, 0));
          _gruben.add(new Field.point(1, 1));
          _gruben.add(new Field.point(3, 2));
        }
        void level8Gruben(){
          _gruben.add(new Field.point(2, 1));
          _gruben.add(new Field.point(3, 0));
          _gruben.add(new Field.point(4, 3));
        }
        void level9Gruben(){
          _gruben.add(new Field.point(0, 1));
          _gruben.add(new Field.point(0, 4));
          _gruben.add(new Field.point(1, 1));
          _gruben.add(new Field.point(1, 3));
          _gruben.add(new Field.point(1, 4));
          _gruben.add(new Field.point(2, 4));
          _gruben.add(new Field.point(3, 2));
          _gruben.add(new Field.point(3, 4));
          _gruben.add(new Field.point(4, 2));
          _gruben.add(new Field.point(4, 4));
        }
        void level10Gruben(){
          _gruben.add(new Field.point(0, 0));
          _gruben.add(new Field.point(0, 1));
          _gruben.add(new Field.point(0, 3));
          _gruben.add(new Field.point(1, 3));
          _gruben.add(new Field.point(2, 1));
          _gruben.add(new Field.point(3, 2));
        }
    
  List<Field> get erstelleGestank {
    switch(_level) {
          case 1:
            level1Gestank();
            break;
          case 2:
            level2Gestank();
            break;
          case 3:
            level3Gestank();
            break;
          case 4:
            level4Gestank();
            break;
          case 5:
            level5Gestank();
            break;
          case 6:
            level6Gestank();
            break;
          case 7:
            level7Gestank();
            break;
          case 8:
            level8Gestank();
            break;
          case 9:
            level9Gestank();
            break;
          case 10:
            level10Gestank();
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
    _gestank.add(new Field.point(0, 1));
    _gestank.add(new Field.point(1, 0));
  }
  void level3Gestank(){
      _gestank.add(new Field.point(0, 1));
      _gestank.add(new Field.point(1, 0));
      _gestank.add(new Field.point(1, 2));
      _gestank.add(new Field.point(2, 1));
    }
  void level4Gestank(){
      _gestank.add(new Field.point(2, 1));
      _gestank.add(new Field.point(3, 0));
      _gestank.add(new Field.point(3, 2));
      _gestank.add(new Field.point(4, 1));
    }
  void level5Gestank(){
      _gestank.add(new Field.point(4, 4));
      _gestank.add(new Field.point(5, 3));
      _gestank.add(new Field.point(5, 5));
    }
  void level6Gestank(){
        _gestank.add(new Field.point(0, 1));
        _gestank.add(new Field.point(1, 0));
        _gestank.add(new Field.point(1, 2));
        _gestank.add(new Field.point(2, 1));
      }

  void level7Gestank(){
    _gestank.add(new Field.point(1, 3));
    _gestank.add(new Field.point(2, 2));
    _gestank.add(new Field.point(3, 3));
  }
  void level8Gestank(){
    _gestank.add(new Field.point(4, 2));
    _gestank.add(new Field.point(5, 1));
    _gestank.add(new Field.point(5, 3));
  }
  void level9Gestank(){
    _gestank.add(new Field.point(1, 0));
    _gestank.add(new Field.point(2, 1));
    _gestank.add(new Field.point(3, 0));
  }
  void level10Gestank(){
    _gestank.add(new Field.point(1, 2));
  }

    
  
  List<Field> get erstelleLuftzug {
    switch(_level) {
              case 1:
                level1Luftzug();
                break;
              case 2:
                level2Luftzug();
                break;
              case 3:
                level3Luftzug();
                break;
              case 4:
                level4Luftzug();
                break;
              case 5:
                level5Luftzug();
                break;
              case 6:
                level6Luftzug();
                break;
              case 7:
                level7Luftzug();
                break;
              case 8:
                level8Luftzug();
                break;
              case 9:
                level9Luftzug();
                break;
              case 10:
                level10Luftzug();
                break;
            }
    return _luftzug;
  }
  
  void level1Luftzug(){
    _luftzug.add(new Field.point(0, 2));
    _luftzug.add(new Field.point(1, 1));
    _luftzug.add(new Field.point(1, 3));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(3, 1));
    _luftzug.add(new Field.point(3, 3));
  }
  
  void level2Luftzug(){
        _luftzug.add(new Field.point(0, 3));
        _luftzug.add(new Field.point(1, 2));
        _luftzug.add(new Field.point(2, 1));
        _luftzug.add(new Field.point(2, 3));
        _luftzug.add(new Field.point(3, 2));
      }
  
  void level3Luftzug(){
        _luftzug.add(new Field.point(0, 3));
        _luftzug.add(new Field.point(1, 0));
        _luftzug.add(new Field.point(1, 2));
        _luftzug.add(new Field.point(1, 4));
        _luftzug.add(new Field.point(2, 1));
        _luftzug.add(new Field.point(2, 3));
        _luftzug.add(new Field.point(3, 0));
        _luftzug.add(new Field.point(3, 2));
        _luftzug.add(new Field.point(3, 4));
        _luftzug.add(new Field.point(4, 1));
        _luftzug.add(new Field.point(4, 3));
  }
  void level4Luftzug(){
          _luftzug.add(new Field.point(0, 0));
          _luftzug.add(new Field.point(0, 2));
          _luftzug.add(new Field.point(0, 3));
          _luftzug.add(new Field.point(1, 1));
          _luftzug.add(new Field.point(1, 3));
          _luftzug.add(new Field.point(1, 4));
          _luftzug.add(new Field.point(2, 0));
          _luftzug.add(new Field.point(2, 2));
          _luftzug.add(new Field.point(2, 3));
          _luftzug.add(new Field.point(3, 2));
          _luftzug.add(new Field.point(3, 4));
          _luftzug.add(new Field.point(4, 3));
    }
  void level5Luftzug(){
            _luftzug.add(new Field.point(0, 0));
            _luftzug.add(new Field.point(0, 1));
            _luftzug.add(new Field.point(0, 3));
            _luftzug.add(new Field.point(1, 1));
            _luftzug.add(new Field.point(1, 2));
            _luftzug.add(new Field.point(1, 4));
            _luftzug.add(new Field.point(2, 0));
            _luftzug.add(new Field.point(2, 2));
            _luftzug.add(new Field.point(2, 3));
            _luftzug.add(new Field.point(2, 5));
            _luftzug.add(new Field.point(3, 1));
            _luftzug.add(new Field.point(3, 4));
      }
  void level6Luftzug(){
              _luftzug.add(new Field.point(0, 4));
              _luftzug.add(new Field.point(1, 3));
              _luftzug.add(new Field.point(1, 5));
              _luftzug.add(new Field.point(2, 0));
              _luftzug.add(new Field.point(2, 2));
              _luftzug.add(new Field.point(2, 4));
              _luftzug.add(new Field.point(3, 1));
              _luftzug.add(new Field.point(3, 3));
              _luftzug.add(new Field.point(3, 5));
              _luftzug.add(new Field.point(4, 0));
              _luftzug.add(new Field.point(4, 2));
              _luftzug.add(new Field.point(4, 4));
              _luftzug.add(new Field.point(5, 3));
              _luftzug.add(new Field.point(5, 5));
        }
  
  void level7Luftzug(){
    _luftzug.add(new Field.point(0, 0));
    _luftzug.add(new Field.point(0, 1));
    _luftzug.add(new Field.point(1, 2));
    _luftzug.add(new Field.point(2, 0));
    _luftzug.add(new Field.point(2, 1));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(3, 1));
    _luftzug.add(new Field.point(3, 3));
  }
  
  void level8Luftzug(){
    _luftzug.add(new Field.point(2,  0));
    _luftzug.add(new Field.point(2,  2));
    _luftzug.add(new Field.point(3,  1));
    _luftzug.add(new Field.point(3,  3));
    _luftzug.add(new Field.point(4,  0));
    _luftzug.add(new Field.point(4,  2));
    _luftzug.add(new Field.point(5,  3));
  }
  
  void level9Luftzug() {
    _luftzug.add(new Field.point(0, 0));
    _luftzug.add(new Field.point(0, 2));
    _luftzug.add(new Field.point(0, 3));
    _luftzug.add(new Field.point(1, 0));
    _luftzug.add(new Field.point(1, 2));
    _luftzug.add(new Field.point(2, 1));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(2, 3));
    _luftzug.add(new Field.point(3, 1));
    _luftzug.add(new Field.point(3, 3));
    _luftzug.add(new Field.point(4, 1));
  }
  void level10Luftzug(){
    _luftzug.add(new Field.point(1, 0));
    _luftzug.add(new Field.point(1, 1));
    _luftzug.add(new Field.point(1, 2));
    _luftzug.add(new Field.point(2, 0));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(2, 3));
    _luftzug.add(new Field.point(3, 1));
  }
  
  Field get erstelleWumpus {
    switch(_level) {
                  case 1:
                    level1Wumpus();
                    break;
                  case 2:
                    level2Wumpus();
                    break;
                  case 3:
                    level3Wumpus();
                    break;
                  case 4:
                    level4Wumpus();
                    break;
                  case 5:
                    level5Wumpus();
                    break;
                  case 6:
                    level6Wumpus();
                    break;
                  case 7:
                    level7Wumpus();
                    break;
                  case 8:
                    level8Wumpus();
                    break;
                  case 9:
                    level9Wumpus();
                    break;
                  case 10:
                    level10Wumpus();
                    break;
                }
    return _wumpus;
   }
  void level1Wumpus(){
    _wumpus = new Field.point(1,0);
  }
  
  void level2Wumpus(){
    _wumpus = new Field.point(0,0);
  }
  void level3Wumpus(){
      _wumpus = new Field.point(1,1);
    }
    void level4Wumpus(){
        _wumpus = new Field.point(3,1);
    }
    void level5Wumpus(){
        _wumpus = new Field.point(5,4);
    }
    void level6Wumpus(){
          _wumpus = new Field.point(1,1);
      }
  void level7Wumpus(){
    _wumpus = new Field.point(2,3);
  }
  
  void level8Wumpus(){
    _wumpus = new Field.point(5, 2);
  }

  void level9Wumpus(){
    _wumpus = new Field.point(2, 0);
  }
  
  void level10Wumpus(){
    _wumpus = new Field.point(0, 2);
  }
  
  Field get erstelleSchatz {
    switch(_level) {
                      case 1:
                        level1Schatz();
                        break;
                      case 2:
                        level2Schatz();
                        break;
                      case 3:
                        level3Schatz();
                        break;
                      case 4:
                        level4Schatz();
                        break;
                      case 5:
                        level5Schatz();
                        break;
                      case 6:
                        level6Schatz();
                        break;
                      case 7:
                        level7Schatz();
                        break;
                      case 8:
                        level8Schatz();
                        break;
                      case 9:
                        level9Schatz();
                        break;
                      case 10:
                        level10Schatz();
                        break;
                    }
    return _schatz;
  }
  void level1Schatz(){
    _schatz = new Field.point(1,1);
  }
  
  void level2Schatz(){
    _schatz = new Field.point(0,2);
  }
  void level3Schatz(){
      _schatz = new Field.point(0,2);
    }
  void level4Schatz(){
      _schatz = new Field.point(4,4);
    }
  void level5Schatz(){
      _schatz = new Field.point(3,5);
    }
  void level6Schatz(){
        _schatz = new Field.point(0,0);
      }
  
  void level7Schatz(){
    _schatz = new Field.point(0,3);
  }
  
  void level8Schatz(){
    _schatz = new Field.point(3, 2);
  }
  
  void level9Schatz(){
    _schatz = new Field.point(4, 3);
  }
  void level10Schatz(){
    _schatz = new Field.point(3, 3);
  }
  
  get getRow => _row;
  get getCol => _col;
  }
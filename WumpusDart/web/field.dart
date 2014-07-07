library level;

// Variablen für ein Level
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

  /**
   * Konstruktor für ein Feld
   */
  Field(this._level) {

  }

  /**
   * Konstruktor für ein Feld
   */
  Field.point(this._row, this._col) {
  }


  /**
   * Auswahl der Gruben für ein Level
   */
  List<Field> get erstelleGruben {
    switch (_level) {
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
      case 11:
        level11Gruben();
        break;
      case 12:
        level12Gruben();
        break;
      case 13:
        level13Gruben();
        break;
      case 14:
        level14Gruben();
        break;
      case 15:
        level15Gruben();
        break;
      case 16:
        level16Gruben();
        break;
      case 17:
        level17Gruben();
        break;
      case 18:
        level18Gruben();
        break;
    }
    return _gruben;
  }

  /**
   * Gruben für Level 1
   */
  void level1Gruben() {
    _gruben.add(new Field.point(1, 2));
    _gruben.add(new Field.point(0, 3));
    _gruben.add(new Field.point(3, 2));
  }

  /**
   * Gruben für Level 2
   */
  void level2Gruben() {
    _gruben.add(new Field.point(1, 3));
    _gruben.add(new Field.point(2, 2));
    _gruben.add(new Field.point(3, 3));
  }

  /**
   * Gruben für Level 3
   */
  void level3Gruben() {
    _gruben.add(new Field.point(0, 4));
    _gruben.add(new Field.point(2, 0));
    _gruben.add(new Field.point(2, 2));
    _gruben.add(new Field.point(4, 2));
    _gruben.add(new Field.point(4, 4));
  }

  /**
   * Gruben für Level 4
   */
  void level4Gruben() {
    _gruben.add(new Field.point(0, 4));
    _gruben.add(new Field.point(1, 0));
    _gruben.add(new Field.point(1, 2));
    _gruben.add(new Field.point(3, 3));
  }

  /**
   * Gruben für Level 5
   */
  void level5Gruben() {
    _gruben.add(new Field.point(0, 2));
    _gruben.add(new Field.point(1, 0));
    _gruben.add(new Field.point(2, 1));
    _gruben.add(new Field.point(2, 4));
  }

  /**
   * Gruben für Level 6
   */
  void level6Gruben() {
    _gruben.add(new Field.point(1, 4));
    _gruben.add(new Field.point(3, 0));
    _gruben.add(new Field.point(3, 2));
    _gruben.add(new Field.point(4, 3));
    _gruben.add(new Field.point(4, 5));
  }

  /**
   * Gruben für Level 7
   */
  void level7Gruben() {
    _gruben.add(new Field.point(1, 0));
    _gruben.add(new Field.point(1, 1));
    _gruben.add(new Field.point(3, 2));
  }

  /**
   * Gruben für Level 8
   */
  void level8Gruben() {
    _gruben.add(new Field.point(2, 1));
    _gruben.add(new Field.point(3, 0));
    _gruben.add(new Field.point(4, 3));
  }

  /**
   * Gruben für Level 9
   */
  void level9Gruben() {
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

  /**
   * Gruben für Level 10
   */
  void level10Gruben() {
    _gruben.add(new Field.point(0, 0));
    _gruben.add(new Field.point(0, 1));
    _gruben.add(new Field.point(0, 3));
    _gruben.add(new Field.point(1, 3));
    _gruben.add(new Field.point(2, 1));
    _gruben.add(new Field.point(3, 2));
  }

  /**
   * Gruben für Level 11
   */
  void level11Gruben() {
    _gruben.add(new Field.point(0, 0));
    _gruben.add(new Field.point(0, 4));
    _gruben.add(new Field.point(1, 3));
    _gruben.add(new Field.point(2, 1));
    _gruben.add(new Field.point(2, 4));
    _gruben.add(new Field.point(4, 2));
  }

  /**
   * Gruben für Level 12
   */
  void level12Gruben() {
    _gruben.add(new Field.point(0, 4));
    _gruben.add(new Field.point(0, 6));
    _gruben.add(new Field.point(1, 0));
    _gruben.add(new Field.point(1, 2));
    _gruben.add(new Field.point(1, 4));
    _gruben.add(new Field.point(2, 2));
    _gruben.add(new Field.point(2, 5));
    _gruben.add(new Field.point(3, 1));
    _gruben.add(new Field.point(3, 3));
    _gruben.add(new Field.point(3, 5));
    _gruben.add(new Field.point(4, 2));
    _gruben.add(new Field.point(5, 1));
    _gruben.add(new Field.point(6, 6));
  }

  /**
   * Gruben für Level 13
   */
  void level13Gruben() {
    _gruben.add(new Field.point(0, 0));
    _gruben.add(new Field.point(0, 1));
    _gruben.add(new Field.point(0, 2));
    _gruben.add(new Field.point(0, 3));
    _gruben.add(new Field.point(0, 4));
    _gruben.add(new Field.point(0, 5));
    _gruben.add(new Field.point(0, 6));
    _gruben.add(new Field.point(1, 0));
    _gruben.add(new Field.point(1, 6));
    _gruben.add(new Field.point(2, 0));
    _gruben.add(new Field.point(2, 3));
    _gruben.add(new Field.point(2, 4));
    _gruben.add(new Field.point(2, 6));
    _gruben.add(new Field.point(3, 0));
    _gruben.add(new Field.point(3, 2));
    _gruben.add(new Field.point(3, 4));
    _gruben.add(new Field.point(3, 6));
    _gruben.add(new Field.point(4, 0));
    _gruben.add(new Field.point(4, 2));
    _gruben.add(new Field.point(4, 4));
    _gruben.add(new Field.point(4, 6));
    _gruben.add(new Field.point(5, 2));
    _gruben.add(new Field.point(5, 6));
    _gruben.add(new Field.point(6, 2));
    _gruben.add(new Field.point(6, 3));
    _gruben.add(new Field.point(6, 4));
    _gruben.add(new Field.point(6, 5));
    _gruben.add(new Field.point(6, 6));
  }

  /**
    * Gruben für Level 14
    */
  void level14Gruben() {
    _gruben.add(new Field.point(1, 1));
    _gruben.add(new Field.point(1, 3));
    _gruben.add(new Field.point(3, 2));
  }

  /**
     * Gruben für Level 15
     */
  void level15Gruben() {
    _gruben.add(new Field.point(0, 0));
    _gruben.add(new Field.point(0, 4));
    _gruben.add(new Field.point(1, 2));
    _gruben.add(new Field.point(2, 2));
    _gruben.add(new Field.point(4, 4));
  }

  /**
   * Gruben für Level 16
   */
  void level16Gruben() {
    _gruben.add(new Field.point(0, 0));
    _gruben.add(new Field.point(0, 6));
    _gruben.add(new Field.point(1, 2));
    _gruben.add(new Field.point(1, 3));
    _gruben.add(new Field.point(1, 5));
    _gruben.add(new Field.point(2, 1));
    _gruben.add(new Field.point(2, 5));
    _gruben.add(new Field.point(3, 1));
    _gruben.add(new Field.point(3, 3));
    _gruben.add(new Field.point(3, 4));
    _gruben.add(new Field.point(3, 6));
    _gruben.add(new Field.point(4, 0));
    _gruben.add(new Field.point(5, 2));
    _gruben.add(new Field.point(5, 3));
    _gruben.add(new Field.point(5, 4));
    _gruben.add(new Field.point(5, 5));
  }

  /**
   * Gruben für Level 17
   */
  void level17Gruben() {
    _gruben.add(new Field.point(0, 1));
    _gruben.add(new Field.point(0, 4));
    _gruben.add(new Field.point(2, 0));
    _gruben.add(new Field.point(2, 1));
    _gruben.add(new Field.point(2, 3));
    _gruben.add(new Field.point(2, 4));
    _gruben.add(new Field.point(3, 3));
    _gruben.add(new Field.point(4, 1));
    _gruben.add(new Field.point(4, 5));
    _gruben.add(new Field.point(5, 2));
  }

  /**
    * Gruben für Level 18
    */
  void level18Gruben() {
    _gruben.add(new Field.point(0, 3));
    _gruben.add(new Field.point(0, 4));
    _gruben.add(new Field.point(0, 5));
    _gruben.add(new Field.point(0, 7));
    _gruben.add(new Field.point(1, 1));
    _gruben.add(new Field.point(1, 3));
    _gruben.add(new Field.point(2, 1));
    _gruben.add(new Field.point(2, 5));
    _gruben.add(new Field.point(3, 3));
    _gruben.add(new Field.point(3, 5));
    _gruben.add(new Field.point(3, 7));
    _gruben.add(new Field.point(4, 2));
    _gruben.add(new Field.point(4, 5));
    _gruben.add(new Field.point(5, 1));
    _gruben.add(new Field.point(5, 2));
    _gruben.add(new Field.point(5, 3));
    _gruben.add(new Field.point(5, 4));
    _gruben.add(new Field.point(5, 5));
    _gruben.add(new Field.point(5, 6));
    _gruben.add(new Field.point(6, 5));
    _gruben.add(new Field.point(7, 2));
    _gruben.add(new Field.point(7, 7));
  }

  /**
   * Auswahl des Gestanks (des Wumpus) für ein Level
   */
  List<Field> get erstelleGestank {
    switch (_level) {
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
      case 11:
        level11Gestank();
        break;
      case 12:
        level12Gestank();
        break;
      case 13:
        level13Gestank();
        break;
      case 14:
        level14Gestank();
        break;
      case 15:
        level15Gestank();
        break;
      case 16:
        level16Gestank();
        break;
      case 17:
        level17Gestank();
        break;
      case 18:
        level18Gestank();
        break;
    }
    return _gestank;
  }

  /**
   * Gestank für Level 1
   */
  void level1Gestank() {
    _gestank.add(new Field.point(1, 1));
    _gestank.add(new Field.point(0, 0));
    _gestank.add(new Field.point(2, 0));
  }

  /**
   * Gestank für Level 2
   */
  void level2Gestank() {
    _gestank.add(new Field.point(0, 1));
    _gestank.add(new Field.point(1, 0));
  }

  /**
   * Gestank für Level 3
   */
  void level3Gestank() {
    _gestank.add(new Field.point(0, 1));
    _gestank.add(new Field.point(1, 0));
    _gestank.add(new Field.point(1, 2));
    _gestank.add(new Field.point(2, 1));
  }

  /**
   * Gestank für Level 4
   */
  void level4Gestank() {
    _gestank.add(new Field.point(2, 1));
    _gestank.add(new Field.point(3, 0));
    _gestank.add(new Field.point(3, 2));
    _gestank.add(new Field.point(4, 1));
  }

  /**
   * Gestank für Level 5
   */
  void level5Gestank() {
    _gestank.add(new Field.point(4, 4));
    _gestank.add(new Field.point(5, 3));
    _gestank.add(new Field.point(5, 5));
  }

  /**
   * Gestank für Level 6
   */
  void level6Gestank() {
    _gestank.add(new Field.point(0, 1));
    _gestank.add(new Field.point(1, 0));
    _gestank.add(new Field.point(1, 2));
    _gestank.add(new Field.point(2, 1));
  }

  /**
   * Gestank für Level 7
   */
  void level7Gestank() {
    _gestank.add(new Field.point(1, 3));
    _gestank.add(new Field.point(2, 2));
    _gestank.add(new Field.point(3, 3));
  }

  /**
   * Gestank für Level 8
   */
  void level8Gestank() {
    _gestank.add(new Field.point(4, 2));
    _gestank.add(new Field.point(5, 1));
    _gestank.add(new Field.point(5, 3));
  }

  /**
   * Gestank für Level 9
   */
  void level9Gestank() {
    _gestank.add(new Field.point(1, 0));
    _gestank.add(new Field.point(2, 1));
    _gestank.add(new Field.point(3, 0));
  }

  /**
   * Gestank für Level 10
   */
  void level10Gestank() {
    _gestank.add(new Field.point(1, 2));
  }

  /**
   * Gestank für Level 11
   */
  void level11Gestank() {
    _gestank.add(new Field.point(3, 5));
    _gestank.add(new Field.point(4, 4));
    _gestank.add(new Field.point(5, 5));
  }

  /**
   * Gestank für Level 12
   */
  void level12Gestank() {
    _gestank.add(new Field.point(4, 4));
    _gestank.add(new Field.point(5, 3));
    _gestank.add(new Field.point(5, 5));
    _gestank.add(new Field.point(6, 4));
  }

  /**
   * Gestank für Level 13
   */
  void level13Gestank() {
    _gestank.add(new Field.point(1, 2));
    _gestank.add(new Field.point(2, 1));
    _gestank.add(new Field.point(2, 3));
    _gestank.add(new Field.point(3, 2));
  }

  /**
   * Gestank für Level 14
   */
  void level14Gestank() {
    _gestank.add(new Field.point(0, 1));
    _gestank.add(new Field.point(1, 0));
  }

  /**
   * Gestank für Level 15
   */
  void level15Gestank() {
    _gestank.add(new Field.point(3, 2));
    _gestank.add(new Field.point(4, 1));
    _gestank.add(new Field.point(4, 3));
  }

  /**
   * Gestank für Level 16
   */
  void level16Gestank() {
    _gestank.add(new Field.point(3, 1));
    _gestank.add(new Field.point(4, 0));
    _gestank.add(new Field.point(4, 2));
    _gestank.add(new Field.point(5, 1));
  }

  /**
   * Gestank für Level 17
   */
  void level17Gestank() {
    _gestank.add(new Field.point(4, 3));
    _gestank.add(new Field.point(5, 2));
    _gestank.add(new Field.point(5, 4));
  }

  /**
   * Gestank für Level 18
   */
  void level18Gestank() {
    _gestank.add(new Field.point(1, 3));
    _gestank.add(new Field.point(2, 2));
    _gestank.add(new Field.point(2, 4));
    _gestank.add(new Field.point(3, 3));
  }

  /**
   * Auswahl des Luftzugs (einer Grube) für ein Level
   */
  List<Field> get erstelleLuftzug {
    switch (_level) {
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
      case 11:
        level11Luftzug();
        break;
      case 12:
        level12Luftzug();
        break;
      case 13:
        level13Luftzug();
        break;
      case 14:
        level14Luftzug();
        break;
      case 15:
        level15Luftzug();
        break;
      case 16:
        level16Luftzug();
        break;
      case 17:
        level17Luftzug();
        break;
      case 18:
        level18Luftzug();
        break;
    }
    return _luftzug;
  }

  /**
   * Luftzug für Level 1
   */
  void level1Luftzug() {
    _luftzug.add(new Field.point(0, 2));
    _luftzug.add(new Field.point(1, 1));
    _luftzug.add(new Field.point(1, 3));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(3, 1));
    _luftzug.add(new Field.point(3, 3));
  }

  /**
   * Luftzug für Level 2
   */
  void level2Luftzug() {
    _luftzug.add(new Field.point(0, 3));
    _luftzug.add(new Field.point(1, 2));
    _luftzug.add(new Field.point(2, 1));
    _luftzug.add(new Field.point(2, 3));
    _luftzug.add(new Field.point(3, 2));
  }

  /**
   * Luftzug für Level 3
   */
  void level3Luftzug() {
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

  /**
   * Luftzug für Level 4
   */
  void level4Luftzug() {
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

  /**
   * Luftzug für Level 5
   */
  void level5Luftzug() {
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

  /**
   * Luftzug für Level 6
   */
  void level6Luftzug() {
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

  /**
   * Luftzug für Level 7
   */
  void level7Luftzug() {
    _luftzug.add(new Field.point(0, 0));
    _luftzug.add(new Field.point(0, 1));
    _luftzug.add(new Field.point(1, 2));
    _luftzug.add(new Field.point(2, 0));
    _luftzug.add(new Field.point(2, 1));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(3, 1));
    _luftzug.add(new Field.point(3, 3));
  }

  /**
   * Luftzug für Level 8
   */
  void level8Luftzug() {
    _luftzug.add(new Field.point(2, 0));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(3, 1));
    _luftzug.add(new Field.point(3, 3));
    _luftzug.add(new Field.point(4, 0));
    _luftzug.add(new Field.point(4, 2));
    _luftzug.add(new Field.point(5, 3));
  }

  /**
   * Luftzug für Level 9
   */
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

  /**
   * Luftzug für Level 10
   */
  void level10Luftzug() {
    _luftzug.add(new Field.point(1, 0));
    _luftzug.add(new Field.point(1, 1));
    _luftzug.add(new Field.point(1, 2));
    _luftzug.add(new Field.point(2, 0));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(2, 3));
    _luftzug.add(new Field.point(3, 1));
  }

  /**
   * Luftzug für Level 11
   */
  void level11Luftzug() {
    _luftzug.add(new Field.point(0, 1));
    _luftzug.add(new Field.point(0, 3));
    _luftzug.add(new Field.point(0, 5));
    _luftzug.add(new Field.point(1, 0));
    _luftzug.add(new Field.point(1, 1));
    _luftzug.add(new Field.point(1, 2));
    _luftzug.add(new Field.point(2, 0));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(2, 3));
    _luftzug.add(new Field.point(2, 5));
    _luftzug.add(new Field.point(3, 1));
    _luftzug.add(new Field.point(3, 2));
    _luftzug.add(new Field.point(3, 4));
    _luftzug.add(new Field.point(4, 1));
    _luftzug.add(new Field.point(4, 3));
    _luftzug.add(new Field.point(5, 2));
  }

  /**
   * Luftzug für Level 12
   */
  void level12Luftzug() {
    _luftzug.add(new Field.point(0, 0));
    _luftzug.add(new Field.point(0, 1));
    _luftzug.add(new Field.point(0, 2));
    _luftzug.add(new Field.point(0, 3));
    _luftzug.add(new Field.point(0, 5));
    _luftzug.add(new Field.point(1, 1));
    _luftzug.add(new Field.point(1, 3));
    _luftzug.add(new Field.point(1, 5));
    _luftzug.add(new Field.point(1, 6));
    _luftzug.add(new Field.point(2, 0));
    _luftzug.add(new Field.point(2, 1));
    _luftzug.add(new Field.point(2, 3));
    _luftzug.add(new Field.point(2, 4));
    _luftzug.add(new Field.point(2, 6));
    _luftzug.add(new Field.point(3, 0));
    _luftzug.add(new Field.point(3, 2));
    _luftzug.add(new Field.point(3, 4));
    _luftzug.add(new Field.point(3, 6));
    _luftzug.add(new Field.point(4, 1));
    _luftzug.add(new Field.point(4, 3));
    _luftzug.add(new Field.point(4, 5));
    _luftzug.add(new Field.point(5, 0));
    _luftzug.add(new Field.point(5, 2));
    _luftzug.add(new Field.point(5, 6));
    _luftzug.add(new Field.point(6, 1));
    _luftzug.add(new Field.point(6, 5));
  }

  /**
   * Luftzug für Level 13
   */
  void level13Luftzug() {
    _luftzug.add(new Field.point(1, 1));
    _luftzug.add(new Field.point(1, 2));
    _luftzug.add(new Field.point(1, 3));
    _luftzug.add(new Field.point(1, 4));
    _luftzug.add(new Field.point(1, 5));
    _luftzug.add(new Field.point(2, 1));
    _luftzug.add(new Field.point(2, 5));
    _luftzug.add(new Field.point(3, 1));
    _luftzug.add(new Field.point(3, 3));
    _luftzug.add(new Field.point(3, 5));
    _luftzug.add(new Field.point(4, 1));
    _luftzug.add(new Field.point(4, 3));
    _luftzug.add(new Field.point(4, 5));
    _luftzug.add(new Field.point(5, 0));
    _luftzug.add(new Field.point(5, 1));
    _luftzug.add(new Field.point(5, 3));
    _luftzug.add(new Field.point(5, 4));
    _luftzug.add(new Field.point(5, 5));
    _luftzug.add(new Field.point(6, 1));
  }

  /**
   * Luftzug für Level 14
   */
  void level14Luftzug() {
    _luftzug.add(new Field.point(0, 1));
    _luftzug.add(new Field.point(0, 3));
    _luftzug.add(new Field.point(1, 0));
    _luftzug.add(new Field.point(1, 2));
    _luftzug.add(new Field.point(2, 1));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(2, 3));
    _luftzug.add(new Field.point(3, 1));
    _luftzug.add(new Field.point(3, 3));
  }

  /**
   * Luftzug für Level 15
   */
  void level15Luftzug() {
    _luftzug.add(new Field.point(0, 1));
    _luftzug.add(new Field.point(0, 2));
    _luftzug.add(new Field.point(0, 3));
    _luftzug.add(new Field.point(1, 0));
    _luftzug.add(new Field.point(1, 1));
    _luftzug.add(new Field.point(1, 3));
    _luftzug.add(new Field.point(1, 4));
    _luftzug.add(new Field.point(2, 1));
    _luftzug.add(new Field.point(2, 3));
    _luftzug.add(new Field.point(3, 2));
    _luftzug.add(new Field.point(3, 4));
    _luftzug.add(new Field.point(4, 3));
  }

  /**
   * Luftzug für Level 16
   */
  void level16Luftzug() {
    _luftzug.add(new Field.point(0, 1));
    _luftzug.add(new Field.point(0, 2));
    _luftzug.add(new Field.point(0, 3));
    _luftzug.add(new Field.point(0, 5));
    _luftzug.add(new Field.point(1, 0));
    _luftzug.add(new Field.point(1, 1));
    _luftzug.add(new Field.point(1, 4));
    _luftzug.add(new Field.point(1, 6));
    _luftzug.add(new Field.point(2, 0));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(2, 3));
    _luftzug.add(new Field.point(2, 4));
    _luftzug.add(new Field.point(2, 6));
    _luftzug.add(new Field.point(3, 0));
    _luftzug.add(new Field.point(3, 2));
    _luftzug.add(new Field.point(3, 5));
    _luftzug.add(new Field.point(4, 1));
    _luftzug.add(new Field.point(4, 2));
    _luftzug.add(new Field.point(4, 3));
    _luftzug.add(new Field.point(4, 4));
    _luftzug.add(new Field.point(4, 5));
    _luftzug.add(new Field.point(4, 6));
    _luftzug.add(new Field.point(5, 0));
    _luftzug.add(new Field.point(5, 1));
    _luftzug.add(new Field.point(5, 6));
    _luftzug.add(new Field.point(6, 2));
    _luftzug.add(new Field.point(6, 3));
    _luftzug.add(new Field.point(6, 4));
    _luftzug.add(new Field.point(6, 5));
  }

  /**
   * Luftzug für Level 17
   */
  void level17Luftzug() {
    _luftzug.add(new Field.point(0, 0));
    _luftzug.add(new Field.point(0, 2));
    _luftzug.add(new Field.point(0, 3));
    _luftzug.add(new Field.point(0, 5));
    _luftzug.add(new Field.point(1, 0));
    _luftzug.add(new Field.point(1, 1));
    _luftzug.add(new Field.point(1, 3));
    _luftzug.add(new Field.point(1, 4));
    _luftzug.add(new Field.point(1, 5));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(2, 5));
    _luftzug.add(new Field.point(3, 0));
    _luftzug.add(new Field.point(3, 1));
    _luftzug.add(new Field.point(3, 2));
    _luftzug.add(new Field.point(3, 4));
    _luftzug.add(new Field.point(3, 5));
    _luftzug.add(new Field.point(4, 0));
    _luftzug.add(new Field.point(4, 2));
    _luftzug.add(new Field.point(4, 3));
    _luftzug.add(new Field.point(4, 4));
    _luftzug.add(new Field.point(5, 1));
    _luftzug.add(new Field.point(5, 5));
  }

  /**
   * Luftzug für Level 18
   */
  void level18Luftzug() {
    _luftzug.add(new Field.point(0, 1));
    _luftzug.add(new Field.point(0, 2));
    _luftzug.add(new Field.point(0, 6));
    _luftzug.add(new Field.point(1, 0));
    _luftzug.add(new Field.point(1, 2));
    _luftzug.add(new Field.point(1, 4));
    _luftzug.add(new Field.point(1, 5));
    _luftzug.add(new Field.point(1, 7));
    _luftzug.add(new Field.point(2, 0));
    _luftzug.add(new Field.point(2, 2));
    _luftzug.add(new Field.point(2, 4));
    _luftzug.add(new Field.point(2, 6));
    _luftzug.add(new Field.point(2, 7));
    _luftzug.add(new Field.point(3, 1));
    _luftzug.add(new Field.point(3, 2));
    _luftzug.add(new Field.point(3, 4));
    _luftzug.add(new Field.point(3, 6));
    _luftzug.add(new Field.point(4, 1));
    _luftzug.add(new Field.point(4, 4));
    _luftzug.add(new Field.point(4, 6));
    _luftzug.add(new Field.point(4, 7));
    _luftzug.add(new Field.point(5, 0));
    _luftzug.add(new Field.point(5, 7));
    _luftzug.add(new Field.point(6, 1));
    _luftzug.add(new Field.point(6, 2));
    _luftzug.add(new Field.point(6, 3));
    _luftzug.add(new Field.point(6, 4));
    _luftzug.add(new Field.point(6, 6));
    _luftzug.add(new Field.point(6, 7));
    _luftzug.add(new Field.point(7, 1));
    _luftzug.add(new Field.point(7, 3));
    _luftzug.add(new Field.point(7, 5));
    _luftzug.add(new Field.point(7, 6));
  }

  /**
   * Auswahl des Wumpus für ein Level
   */
  Field get erstelleWumpus {
    switch (_level) {
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
      case 11:
        level11Wumpus();
        break;
      case 12:
        level12Wumpus();
        break;
      case 13:
        level13Wumpus();
        break;
      case 14:
        level14Wumpus();
        break;
      case 15:
        level15Wumpus();
        break;
      case 16:
        level16Wumpus();
        break;
      case 17:
        level17Wumpus();
        break;
      case 18:
        level18Wumpus();
        break;
    }
    return _wumpus;
  }

  /**
   * Wumpus für Level 1
   */
  void level1Wumpus() {
    _wumpus = new Field.point(1, 0);
  }

  /**
   * Wumpus für Level 2
   */
  void level2Wumpus() {
    _wumpus = new Field.point(0, 0);
  }

  /**
   * Wumpus für Level 3
   */
  void level3Wumpus() {
    _wumpus = new Field.point(1, 1);
  }

  /**
   * Wumpus für Level 4
   */
  void level4Wumpus() {
    _wumpus = new Field.point(3, 1);
  }

  /**
   * Wumpus für Level 5
   */
  void level5Wumpus() {
    _wumpus = new Field.point(5, 4);
  }

  /**
   * Wumpus für Level 6
   */
  void level6Wumpus() {
    _wumpus = new Field.point(1, 1);
  }

  /**
   * Wumpus für Level 7
   */
  void level7Wumpus() {
    _wumpus = new Field.point(2, 3);
  }

  /**
   * Wumpus für Level 8
   */
  void level8Wumpus() {
    _wumpus = new Field.point(5, 2);
  }

  /**
   * Wumpus für Level 9
   */
  void level9Wumpus() {
    _wumpus = new Field.point(2, 0);
  }

  /**
   * Wumpus für Level 10
   */
  void level10Wumpus() {
    _wumpus = new Field.point(0, 2);
  }

  /**
   * Wumpus für Level 11
   */
  void level11Wumpus() {
    _wumpus = new Field.point(4, 5);
  }

  /**
   * Wumpus für Level 12
   */
  void level12Wumpus() {
    _wumpus = new Field.point(5, 4);
  }

  /**
   * Wumpus für Level 13
   */
  void level13Wumpus() {
    _wumpus = new Field.point(2, 2);
  }

  /**
   * Wumpus für Level 14
   */
  void level14Wumpus() {
    _wumpus = new Field.point(0, 0);
  }

  /**
   * Wumpus für Level 15
   */
  void level15Wumpus() {
    _wumpus = new Field.point(4, 2);
  }

  /**
   * Wumpus für Level 16
   */
  void level16Wumpus() {
    _wumpus = new Field.point(4, 1);
  }

  /**
   * Wumpus für Level 17
   */
  void level17Wumpus() {
    _wumpus = new Field.point(5, 3);
  }

  /**
   * Wumpus für Level 18
   */
  void level18Wumpus() {
    _wumpus = new Field.point(2, 3);
  }

  /**
   * Auswahl des Schatzes für ein Level
   */
  Field get erstelleSchatz {
    switch (_level) {
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
      case 11:
        level11Schatz();
        break;
      case 12:
        level12Schatz();
        break;
      case 13:
        level13Schatz();
        break;
      case 14:
        level14Schatz();
        break;
      case 15:
        level15Schatz();
        break;
      case 16:
        level16Schatz();
        break;
      case 17:
        level17Schatz();
        break;
      case 18:
        level18Schatz();
        break;
    }
    return _schatz;
  }

  /**
   * Schatz für Level 1
   */
  void level1Schatz() {
    _schatz = new Field.point(1, 1);
  }

  /**
   * Schatz für Level 2
   */
  void level2Schatz() {
    _schatz = new Field.point(0, 2);
  }

  /**
   * Schatz für Level 3
   */
  void level3Schatz() {
    _schatz = new Field.point(0, 2);
  }

  /**
   * Schatz für Level 4
   */
  void level4Schatz() {
    _schatz = new Field.point(4, 4);
  }

  /**
   * Schatz für Level 5
   */
  void level5Schatz() {
    _schatz = new Field.point(3, 5);
  }

  /**
   * Schatz für Level 6
   */
  void level6Schatz() {
    _schatz = new Field.point(0, 0);
  }

  /**
   * Schatz für Level 7
   */

  void level7Schatz() {
    _schatz = new Field.point(0, 3);
  }

  /**
   * Schatz für Level 8
   */
  void level8Schatz() {
    _schatz = new Field.point(3, 2);
  }

  /**
   * Schatz für Level 9
   */
  void level9Schatz() {
    _schatz = new Field.point(4, 3);
  }

  /**
   * Schatz für Level 10
   */
  void level10Schatz() {
    _schatz = new Field.point(3, 3);
  }

  /**
   * Schatz für Level 11
   */
  void level11Schatz() {
    _schatz = new Field.point(1, 4);
  }

  /**
   * Schatz für Level 12
   */
  void level12Schatz() {
    _schatz = new Field.point(0, 5);
  }

  /**
   * Schatz für Level 13
   */
  void level13Schatz() {
    _schatz = new Field.point(3, 3);
  }

  /**
   * Schatz für Level 14
   */
  void level14Schatz() {
    _schatz = new Field.point(0, 1);
  }

  /**
   * Schatz für Level 15
   */
  void level15Schatz() {
    _schatz = new Field.point(4, 3);
  }

  /**
   * Schatz für Level 16
   */
  void level16Schatz() {
    _schatz = new Field.point(3, 0);
  }

  /**
   * Schatz für Level 17
   */
  void level17Schatz() {
    _schatz = new Field.point(5, 4);
  }

  /**
   * Schatz für Level 18
   */
  void level18Schatz() {
    _schatz = new Field.point(4, 3);
  }

  /**
   * Getter für die Reihe
   */
  get getRow => _row;

  /**
   * Getter für die Spalte
   */
  get getCol => _col;
}
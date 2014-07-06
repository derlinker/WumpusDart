library model;

import 'field.dart';

class WumpusWelt {
  // Spieler
  var _spieler;
  // Variable für Gewonnen
  bool _gewonnen = false;
  // Variable für Verlieren
  bool _verloren = false;
  // Variable für den Spielstatus
  bool _spielstatus = false;
  // Variable für Spielfeldgröße
  int _size;
  // Variable für Level
  int _level;
  // Feldbelegung des Wumpus
  Field _wumpus;
  // Feldbelegung des Schatzes
  Field _schatz;
  // Liste der Feldbelegungen der Gruben
  List _gruben = new List<Field>();
  // Liste der Feldbelegungen des Gestanks
  List _gestank = new List<Field>();
  // Liste der Feldbelegungen der Luftzuege
  List _luftzug = new List<Field>();

  /**
   * Liefert das Level
   * @return level
   */
  int get level => _level;

  /**
   * Setzt das Level
   */
  void set level(int level) {
    _level = level;
  }

  /**
   * Liefert boolsche Variable gewonnen
   * @return gewonnen
   */
  bool get gewonnen => _gewonnen;

  /**
   * Liefert boolsche Variable verloren
   * @return verloren 
   */
  bool get verloren => _verloren;

  /**
   * Liefert boolsche Variable für den Spielstatus
   * @return spielstatus
   */
  bool get spielstatus => _spielstatus;

  /**
   * Konstruktor WumpusWelt
   */
  WumpusWelt(this._size, this._level) {
    _spieler = new Spieler(this);
    _spieler.col = 0;
    _spieler.row = _size - 1;
    _wumpus = new Field(this._level).erstelleWumpus;
    _schatz = new Field(this._level).erstelleSchatz;
    _gruben = new Field(this._level).erstelleGruben;
    _gestank = new Field(this._level).erstelleGestank;
    _luftzug = new Field(this._level).erstelleLuftzug;
    _gewonnen = false;
    _verloren = false;
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
   * Prueft die Eingabe, ob der Spieler
   * durch diese das Spielfeld verlassen würde
   * @return pruefeEingabe
   */
  bool get pruefeEingabe {
    pruefeVerloren();
    pruefeGewonnen();
    if (_spieler.getrow > _size - 1 || _spieler.getrow < 0 || _spieler.getcol > _size - 1 || _spieler.getcol < 0) {
      return false;
    } else return true;
  }


  /**
   * Prueft ob der Spieler den Schatz erreicht hat
   */
  void pruefeGewonnen() {
    if (_spieler.getrow == _schatz.getRow && _spieler.getcol == _schatz.getCol) {
      _gewonnen = true;
      _verloren = false;
      _spielstatus = false;
      _level = _level + 1;
      print("Sie haben Gewonnen");
    }
  }

  /**
   * Prueft ob der Spieler den Wumpus oder eine Falle erreicht hat
   */
  void pruefeVerloren() {
    if (_spieler.getrow == _wumpus.getRow && _spieler.getcol == _wumpus.getCol) {
      _gewonnen = false;
      _verloren = true;
      _spielstatus = false;
      print("Sie haben Verloren");
    }
    _gruben.forEach((g) {
      if (g.getRow == _spieler.getrow && g.getCol == _spieler.getcol) {
        _gewonnen = false;
        _verloren = true;
        _spielstatus = false;
        print("Sie haben Verloren");
      }
    });
  }
}

/**
 * Repraesentiert den Spieler
 */
class Spieler {
  // Variable fuer Spalte
  int _col;
  // Variable fuer Reihe  
  int _row;
  // WumpusWelt
  WumpusWelt _game;

  /**
   * Konstruktor
   */
  Spieler(WumpusWelt game) {
    this._game = game;
  }

  /**
   * Bewegt den Spieler eine Position nach oben
   * und prueft ob der Spieler nach diesem Zug das Spielfeld verlassen würde,
   * ist dies der Fall wird der Zug rueckgaengig gemacht
   */
  void hoch() {
    _row--;
    if (_game.pruefeEingabe == false) {
      _row++;
    }
  }

  /**
   * Bewegt den Spieler eine Position nach unten
   * und prueft ob der Spieler nach diesem Zug das Spielfeld verlassen würde,
   * ist dies der Fall wird der Zug rueckgaengig gemacht
   */
  void runter() {
    _row++;
    if (_game.pruefeEingabe == false) {
      _row--;
    }
  }

  /**
   * Bewegt den Spieler eine Position nach links
   * und prueft ob der Spieler nach diesem Zug das Spielfeld verlassen würde,
   * ist dies der Fall wird der Zug rueckgaengig gemacht
   */
  void links() {
    _col--;
    if (_game.pruefeEingabe == false) {
      _col++;
    }
  }
  

  /**
   * Bewegt den Spieler eine Position nach rechts
   * und prueft ob der Spieler nach diesem Zug das Spielfeld verlassen würde,
   * ist dies der Fall wird der Zug rueckgaengig gemacht
   */
  void rechts() {
    _col++;
    if (_game.pruefeEingabe == false) {
      _col--;
    }
  }
  
  /**
   * Liefert die Spalte zurück
   * @getcol
   */
  int get getcol {
    return this._col;
  }
  
  /**
   * Liefert die Reihe zurück
   * @getrow
   */
  int get getrow {
    return this._row;
  }
  
  /**
   * Setzt die Spalte 
   */
  void set col(int col) {
    _col = col;
  }
  
  /**
   * Setzt die Reihe
   */
  void set row(int row) {
    _row = row;
  }
}

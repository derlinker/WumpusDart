part of wumpuswelt;


class WumpusWelt {
  //Status des Spiels
  Symbol _gamestatus;
  Player _player;
  
  final int _level;
  
  /**
    * Wenn das Spile gestopt wird, aufrufen
    */
   bool get stopped => _gamestatus == #stopped;

   /**
    * Wenn das Spile gestartet wird, aufrufen
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
   
   WumpusWelt(this._level) {
       start();
       loadlevel(_level);
       stop();
     }
   void movePlayer() { if (running) _player.move(); }
   
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
  int col;
  int row;
  List<String> type;
  
  Field(int collum, int rows, List<String> input) {
    col = collum;
    row = rows;
    type = input;
  }
  
}
//Der Spieler hat eine Position (x,y)
class Player{
  int col;
  int row;
  
  void move(){
    //Bewegung einbauen
  }
  
  void headLeft() {
    col = 0;
    row = -1;
  }
  void headRight() {
    col = 0;
    row = 1;
    }
  void headUp() {
    col = -1;
    row = 0;
    }
  void headDown() {
    col = 1;
    row = 0;
    }
  
}


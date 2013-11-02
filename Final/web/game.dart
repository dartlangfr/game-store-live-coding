import 'dart:html';
import 'package:polymer/polymer.dart';

class Game extends Object with Observable {
  @observable String name;
  @observable String genre;
  @observable String description;
  @observable String image;
  @observable int note;
  
  String toString() => "Game{name: $name}";
}

@CustomTag('x-game')
class XGame extends PolymerElement {
  @observable Game game = new Game()
    ..name = "Darts"
    ..genre = "Pub game"
    ..description = 'Darts is ...'
    ..image = "darts.jpg"
    ..note = 2;
  
  XGame.created() : super.created();

  bool get applyAuthorStyles => true;
  
  String upperCase(String value) => value.toUpperCase();
  String stars(int count) => new List.generate(count, (i) => "★").join("");
  
  increaseNote(Event e, var detail, Node target) => game.note++;
}
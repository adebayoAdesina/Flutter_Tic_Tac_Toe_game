import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class AppData with ChangeNotifier {
  final int _scoreA = 0;
  final int _scoreB = 0;
  String playerOneName = '';
  String playerOneUsing = '';
  String playerTwoName = '';
  String playerTwoUsing = '';
  String currentUsing = '';

  List totalPlayers = [

  ];
  
  Object player = {
    
  };

  void playersDetail(String value, String whichFilled) {
    switch (whichFilled) {
      case 'playerOneName':
        playerOneName = value;
        break;
      case 'playerOneUsing' :
        playerOneUsing = value;
        break;
      case 'playerTwoName':
        playerTwoName = value;
        break;
      default:
        playerTwoUsing = value;
        currentUsing = playerOneUsing;
    }
    notifyListeners();
  }
  String _containerOne = '';
  String _containerTwo = '';
  final String _containerThree = '';
  final String _containerFour = '';
  final String _containerFive = '';
  final String _containerSix = '';
  final String _containerSeven = '';
  final String _containerEight = '';
  final String _containerNine = '';

  void playingGame(String value) async{
    if (currentUsing == playerOneUsing) {
      switch (value) {
        case 'containerOne':
          if (_containerOne == '') {
            _containerOne =currentUsing;
            print(_containerOne);
            currentUsing = playerTwoUsing;
          }
          break;
        case 'containerTwo':
          if (_containerTwo == '') {
            _containerTwo =currentUsing;
            print(_containerTwo);
            currentUsing = playerTwoUsing;
          }
          break;
        default:
      }
    } else if (currentUsing == playerTwoUsing) {
      switch (value) {
        case 'containerOne':
          if (_containerOne == '') {
            _containerOne =currentUsing;
            print(_containerOne);
            currentUsing = playerOneUsing;
          }
          break;
        case 'containerTwo':
          if (_containerTwo == '') {
            _containerTwo =currentUsing;
            print(_containerTwo);
            currentUsing = playerOneUsing;
          }
          break;
        default:
      }
    }
    // else {
    //   currentUsing = playerOneUsing;
    // }
    notifyListeners();
  }
  int get scoreA => _scoreA;
  int get scoreB => _scoreB;
  String get containerone => _containerOne;
  String get containerTwo => _containerTwo;
  String get containerThree => _containerThree;
  String get containerFour => _containerFour;
  String get containerFive => _containerFive;
  String get containerSix => _containerSix;
  String get containerSeven => _containerSeven;
  String get containerEight => _containerEight;
  String get containerNine => _containerNine;
}
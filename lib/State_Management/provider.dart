import 'package:flutter/cupertino.dart';

class AppData with ChangeNotifier {
  int scoreA = 0;
  int scoreB = 0;
  static String playerOneName = '';
  static String playerOneUsing = '';
  static String playerTwoName = '';
  static String playerTwoUsing = '';
  static String currentUsing = '';

  List totalPlayers = [];

  Object player = {};

  void playersDetail(String value, String whichFilled) {
    switch (whichFilled) {
      case 'playerOneName':
        playerOneName = value;
        break;
      case 'playerOneUsing':
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
  String _containerThree = '';
  String _containerFour = '';
  String _containerFive = '';
  String _containerSix = '';
  String _containerSeven = '';
  String _containerEight = '';
  String _containerNine = '';
  late bool checkBool = true;
  var checkOne;

  void playingGame(String value) async {
    checkOne = (_containerOne == playerOneUsing) &&
        (_containerFive == playerOneUsing) &&
        (_containerNine == playerOneUsing);

    if (currentUsing == playerOneUsing && checkBool == true) {
      switch (value) {
        case 'containerOne':
          if (_containerOne == '') {
            _containerOne = currentUsing;
            currentUsing = playerTwoUsing;
          }
          break;
        case 'containerTwo':
          if (_containerTwo == '') {
            _containerTwo = currentUsing;
            currentUsing = playerTwoUsing;
          }
          break;
        case 'containerThree':
          if (_containerThree == '') {
            _containerThree = currentUsing;
            currentUsing = playerTwoUsing;
          }
          break;
        case 'containerFour':
          if (_containerFour == '') {
            _containerFour = currentUsing;
            currentUsing = playerTwoUsing;
          }
          break;
        case 'containerFive':
          if (_containerFive == '') {
            _containerFive = currentUsing;
            currentUsing = playerTwoUsing;
          }
          break;
        case 'containerSix':
          if (_containerSix == '') {
            _containerSix = currentUsing;
            currentUsing = playerTwoUsing;
          }
          break;
        case 'containerSeven':
          if (_containerSeven == '') {
            _containerSeven = currentUsing;
            currentUsing = playerTwoUsing;
          }
          break;
        case 'containerEight':
          if (_containerEight == '') {
            _containerEight = currentUsing;
            currentUsing = playerTwoUsing;
          }
          break;
        default:
          if (_containerNine == '') {
            _containerNine = currentUsing;
            currentUsing = playerTwoUsing;
          }
      }
    } else if (currentUsing == playerTwoUsing) {
      switch (value) {
        case 'containerOne':
          if (_containerOne == '') {
            _containerOne = currentUsing;
            currentUsing = playerOneUsing;
          }
          break;
        case 'containerTwo':
          if (_containerTwo == '') {
            _containerTwo = currentUsing;
            currentUsing = playerOneUsing;
          }
          break;
        case 'containerThree':
          if (_containerThree == '') {
            _containerThree = currentUsing;
            currentUsing = playerOneUsing;
          }
          break;
        case 'containerFour':
          if (_containerFour == '') {
            _containerFour = currentUsing;
            currentUsing = playerOneUsing;
          }
          break;
        case 'containerFive':
          if (_containerFive == '') {
            _containerFive = currentUsing;
            currentUsing = playerOneUsing;
          }
          break;
        case 'containerSix':
          if (_containerSix == '') {
            _containerSix = currentUsing;
            currentUsing = playerOneUsing;
          }
          break;
        case 'containerSeven':
          if (_containerSeven == '') {
            _containerSeven = currentUsing;
            currentUsing = playerOneUsing;
          }
          break;
        case 'containerEight':
          if (_containerEight == '') {
            _containerEight = currentUsing;
            currentUsing = playerOneUsing;
          }
          break;
        default:
          if (_containerNine == '') {
            _containerNine = currentUsing;
            currentUsing = playerOneUsing;
          }
      }
    }
    checkGame();
    notifyListeners();
    // else {
    //   currentUsing = playerOneUsing;
    // }
  }

  void checkGame() {
    if (currentUsing == playerOneUsing && checkBool == true) {
      if (checkOne) {
        checkBool = false;
        scoreA = scoreA + 1;
        print(scoreA);
      }
    } else {}
    // notifyListeners();
  }

  void restartGame() {
    _containerOne = '';
    _containerTwo = '';
    _containerThree = '';
    _containerFour = '';
    _containerFive = '';
    _containerSix = '';
    _containerSeven = '';
    _containerEight = '';
    _containerNine = '';
    checkBool = true;
    notifyListeners();
  }

  void endGame() {
    _containerOne = '';
    _containerTwo = '';
    _containerThree = '';
    _containerFour = '';
    _containerFive = '';
    _containerSix = '';
    _containerSeven = '';
    _containerEight = '';
    _containerNine = '';
    checkBool = true;

    scoreA = 0;
    scoreB = 0;
    playerOneName = '';
    playerOneUsing = '';
    playerTwoName = '';
    playerTwoUsing = '';
    currentUsing = '';
    notifyListeners();
  }

  // // int get scoreA => _scoreA;
  // int get scoreB => _scoreB;
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

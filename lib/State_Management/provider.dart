import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class AppData with ChangeNotifier {
  final int _scoreA = 0;
  final int _scoreB = 0;
  String playerOneName = '';
  String? playerOneUsing;
  String? playerTwoName;
  String? playerTwoUsing;

  List totalPlayers = [

  ];
  
  Object player = {
    
  };

  void playersDetail(String value, String whichFilled) {
    switch (whichFilled) {
      case 'playerOneName':
        playerOneName = whichFilled;
        break;
      case 'playerOneUsing' :
        playerOneUsing = whichFilled;
        break;
      case 'playerTwoName':
        playerOneName = whichFilled;
        break;
      case 'playerTwoUsing' :
        playerOneUsing = whichFilled;
        break;
      default:
    }
    notifyListeners();
  }

  int get scoreA => _scoreA;
  int get scoreB => _scoreB;
}
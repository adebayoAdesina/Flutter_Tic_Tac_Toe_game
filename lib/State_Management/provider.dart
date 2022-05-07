import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class AppData with ChangeNotifier {
  final int _scoreA = 0;
  final int _scoreB = 0;
  String playerOneName = '';
  String playerOneUsing = '';
  String playerTwoName = '';
  String playerTwoUsing = '';

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
    }
    notifyListeners();
  }

  int get scoreA => _scoreA;
  int get scoreB => _scoreB;
}
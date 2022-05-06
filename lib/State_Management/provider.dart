import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class AppData with ChangeNotifier {
  final int _scoreA = 0;
  final int _scoreB = 0;
  List totalPlayers = [

  ];
  
  Object player = {

  };

  int get scoreA => _scoreA;
  int get scoreB => _scoreB;
}
// import 'package:flutter/material.dart';

// class CheckDetails extends StatelessWidget {
//   final String nameOfPlayerOne;
//   final String usingOfPlayerOne;
//   final String nameOfPlayerTwo;
//   final String usingOfPlayerTwo;
//   const CheckDetails({ 
//     Key? key, 
//     required this.nameOfPlayerOne, 
//     required this.usingOfPlayerOne, 
//     required this.nameOfPlayerTwo, 
//     required this.usingOfPlayerTwo 
//     }
//   ) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//                           children: [
//                             Row(
//                               children: [
//                                 Icon(
//                                   nameOfPlayerOne ? Icons.warning_amber_rounded : Icons.done,
//                                   color: nameOfPlayerOne ? danger : textColor,
//                                   size: 20
//                                 ),
//                                 const SizedBox(
//                                   width: 5,
//                                 ),
//                                 Text(
//                                   nameOfPlayerOne ? 'Player One Name is empty': 'Player One Name is Filled',
//                                   style: TextStyle(
//                                     color: nameOfPlayerOne ? danger : textColor
//                                   )
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Icon(
//                                   usingOfPlayerOne ? Icons.warning_amber_rounded : Icons.done,
//                                   color: usingOfPlayerOne ? danger : textColor,
//                                   size: 20
//                                 ),
//                                 const SizedBox(
//                                   width: 5,
//                                 ),
//                                 Text(
//                                   usingOfPlayerOne ? 'Player One Using is empty': 'Player One Using is empty',
//                                   style: TextStyle(
//                                     color: usingOfPlayerOne ? danger : textColor
//                                   )
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Icon(
//                                   nameOfPlayerTwo ? Icons.warning_amber_rounded : Icons.done,
//                                   color: nameOfPlayerTwo ? danger : textColor,
//                                   size: 20
//                                 ),
//                                 const SizedBox(
//                                   width: 5,
//                                 ),
//                                 Text(
//                                   nameOfPlayerTwo ? 'Player Two Name is empty': 'Player Two Name is Filled',
//                                   style: TextStyle(
//                                     color: nameOfPlayerTwo ? danger : textColor
//                                   )
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Icon(
//                                   usingOfPlayerTwo ? Icons.warning_amber_rounded : Icons.done,
//                                   color: usingOfPlayerTwo ? danger : textColor,
//                                   size: 20
//                                 ),
//                                 const SizedBox(
//                                   width: 5,
//                                 ),
//                                 Text(
//                                   usingOfPlayerTwo ? 'Player Two Using is empty': 'Player Two Using is empty',
//                                   style: TextStyle(
//                                     color: usingOfPlayerTwo ? danger : textColor
//                                   )
//                                 ),
//                               ],
//                             ),

//                           ],
//                         ),
//   }
// }
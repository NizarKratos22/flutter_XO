import 'package:flutter/cupertino.dart';

class Player{
  static const x = "X";
  static const o = "O";
  static const empty = "";

}

class Game{
  static final boardlenth = 9 ;
  static final blocSize = 100.0;

 List<String>?board;

 static List<String>? initGameBoard () =>List.generate(boardlenth,(index) =>Player.empty);
//checking the winner

 bool winnerCheck (String player, int index  , List<int> scoreboard , int gridSize){
  int row = index ~/3 ;
  int col = index %3 ;
  int score = player =="X" ?1:-1;

  //declaring cols and rows
  scoreboard[row]+=score ;
  scoreboard[gridSize + col]+=score;
  if(row==col) scoreboard[2*gridSize] +=score;
  if(gridSize -1 - col == row)scoreboard[2*gridSize +1] += score;

  //checking 3 or -3 for winner condition

  if(scoreboard.contains(3) || scoreboard.contains(-3)){
  return true;
  };
   return false ;
 }

}
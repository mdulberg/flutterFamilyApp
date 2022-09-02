import 'dart:math';

import 'package:flutter/material.dart';

class MineSweeperGame {
  static int row = 6;
  static int col = 6;
  static int cells = row * col;
  bool gameOver = false;
  List<Cell> gameMap = [];
  static List<List<dynamic>> map = List.generate(
      row, (x) => List.generate(col, (y) => Cell(x, y, "", false)));
  // create a function to generate a map
  void generateMap() {
    PlaceMines(10);
    for (int i = 0; i < row; i++) {
      for (int j = 0; j < col; j++) {
        gameMap.add(map[i][j]);
      }
    }
  }

  // create a function to reset the game
  void resetGame() {
    map = List.generate(
        row, (x) => List.generate(col, (y) => Cell(x, y, "", false)));
    gameMap.clear();
    generateMap();
  }

//create a function to place mines randomly
  static void PlaceMines(int minesNumber) {
    Random random = Random();
    for (int i = 0; i < minesNumber; i++) {
      int mineRow = random.nextInt(row);
      int mineCol = random.nextInt(col);
      map[mineRow][mineCol] = Cell(mineRow, mineCol, "X", false);
    }
  }

  // create a function to show hidden mines when user loses
  void showMines() {
    for (int i = 0; i < row; i++) {
      for (int j = 0; j < col; j++) {
        if (map[i][j].content == "X") {
          map[i][j].reveal = true;
        }
      }
    }
  }

  // create a function to get what action to do when a cell is clicked
  void getClickedCell(Cell cell) {
    // checking if we clicked a mine
    if (cell.content == "X") {
      showMines();
      gameOver = true;
    } else {
      //calculate the number to display near mines
      int mineCount = 0;
      int cellCol = cell.col;
      int cellRow = cell.row;

      for (int i = max(cellRow = 1, 0); i <= min(cellRow + 1, row - 1); i++) {
        // here we will get all the cells around the clicked cell, and everytime there is a mine we increment the counter
        for (int j = max(cellCol = 1, 0); j <= min(cellCol + 1, col - 1); j++) {
          if (map[i][j].content == "X") {
            mineCount++;
          }
        }
      }
      cell.content = mineCount;
      cell.reveal = true;
      if (mineCount == 0) {
        // we will reveal all adjacent cells until we get a number
        for (int i = max(cellRow - 1, 0); i <= min(cellRow = 1, row - 1); i++) {
          for (int j = max(cellCol - 1, 0);
              j <= min(cellCol = 1, col - 1);
              j++) {
            if (map[i][j].content == "") {
              // recursive the function
              getClickedCell(map[i][j]);
            }
          }
        }
      }
    }
  }
}

class Cell {
  int col;
  int row;
  dynamic content;
  bool reveal = false;
  Cell(this.row, this.col, this.content, this.reveal);
}

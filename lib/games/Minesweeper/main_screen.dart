import 'package:flutter/material.dart';
import 'package:thedulbergs_v1/games/Minesweeper/game_helper.dart';

import 'colors.dart';

class MineSweeper_main_screen extends StatefulWidget {
  const MineSweeper_main_screen({Key? key}) : super(key: key);

  @override
  State<MineSweeper_main_screen> createState() =>
      _MineSweeper_main_screenState();
}

class _MineSweeper_main_screenState extends State<MineSweeper_main_screen> {
  MineSweeperGame game = MineSweeperGame();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    game.generateMap();
  }

  @override
  void dispose() {
    game.resetGame();
    game.gameOver = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MineSweepColors.primaryColor,
      appBar: AppBar(
        backgroundColor: MineSweepColors.primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text("MineSweeper"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                decoration: BoxDecoration(
                  color: MineSweepColors.lightPrimaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.timer,
                      color: MineSweepColors.accentColor,
                      size: 34,
                    ),
                    Text(
                      "10",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
            ],
          ),
          // Now adding the game grid
          Container(
            width: double.infinity,
            height: 500,
            padding: EdgeInsets.all(20),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MineSweeperGame.row,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemCount: MineSweeperGame.cells,
                itemBuilder: (BuildContext ctx, index) {
                  Color cellColor = game.gameMap[index].reveal
                      ? MineSweepColors.clickedCard
                      : MineSweepColors.lightPrimaryColor;
                  return GestureDetector(
                    onTap: game.gameOver
                        ? null
                        : () {
                            setState(() {
                              game.getClickedCell(game.gameMap[index]);
                            });
                          },
                    child: Container(
                        decoration: BoxDecoration(
                            color: cellColor,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: Text(
                          game.gameMap[index].reveal
                              ? "${game.gameMap[index].content}"
                              : "",
                          style: TextStyle(
                              color: game.gameMap[index].reveal
                                  ? game.gameMap[index].content == "X"
                                      ? Colors.red
                                      : MineSweepColors.letterColors[
                                          game.gameMap[index].content]
                                  : Colors.transparent,
                              fontSize: 20),
                        ))),
                  );
                }),
          ),
          Text(
            game.gameOver ? "You Lose" : "",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 32),
          ),
          SizedBox(
            height: 20,
          ),
          RawMaterialButton(
            onPressed: () {
              setState(() {
                game.resetGame();
                game.gameOver = false;
              });
            },
            fillColor: MineSweepColors.lightPrimaryColor,
            elevation: 0,
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 64, vertical: 24),
            child: Text(
              "Repeat",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

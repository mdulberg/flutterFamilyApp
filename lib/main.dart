import 'dart:io';

import 'package:flutter/material.dart';
import 'package:thedulbergs_v1/games/Hangman/game.dart';
import 'package:thedulbergs_v1/games/Piano/piano.dart';
import 'package:thedulbergs_v1/pages/Daniel.dart';
import 'package:thedulbergs_v1/games/Hangman/hangman.dart';
import 'package:thedulbergs_v1/pages/Daniel_songs_page.dart';
import 'package:thedulbergs_v1/pages/home.dart';
import 'package:thedulbergs_v1/pages/youtube_player_screen.dart';
import 'package:thedulbergs_v1/router.dart';
import 'ShayaSongs.dart';
import 'functions/functions.dart';
import 'games/Minesweeper/main_screen.dart';
import 'pages/Shaya.dart';
import 'pages/loading.dart';
import 'pages/Daniel.dart';
import 'pages/Shaya_songs_page.dart';
import 'pages/video_screen.dart';
import 'pages/video_player.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final myDir = Directory('assets/Daniel/randomGifs');
  print(myDir.path);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: MyRouter.generateRoute,
      initialRoute: homeRoute,
      debugShowCheckedModeBanner: false,

      routes: {
        '/': (context) => Home(),
        '/home': (context) => Home(),
        '/Shaya': (context) => shayaPage(),
        '/Daniel': (context) => danielPage(),
        '/Youtube': (context) => YoutubePlayerDemoApp(),
        '/shaya_songs_page': (context) => shaya_songs_page(),
        '/hangman': (context) => HangManApp(),
        '/deadman': (context) => Deadman(),
        '/deadman_winner': (context) => Deadman_winner(),
        '/Xylophone': (context) => XylophoneApp(),
        '/MineSweeper': (context) => MineSweeper_main_screen(),
        '/Daniel_songs_page': (context) => daniel_songs_page(),
        //'/videoPlayer': (context) => videoPlayer(myVideoId: '0aqLwHP4y6Q',),
      },

    );
  }
}



// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//
//       initialRoute: '/home',
//       routes: {
//         '/': (context) => Loading(),
//         '/home': (context) => Home(),
//         '/Shaya': (context) => shayaPage(),
//         '/Daniel': (context) => danielPage(),
//         '/Youtube': (context) => YoutubePlayerDemoApp(),
//         '/shaya_songs_page': (context) => shaya_songs_page(),
//         '/hangman': (context) => HangManApp(),
//         '/deadman': (context) => Deadman(),
//         '/deadman_winner': (context) => Deadman_winner(),
//         '/Xylophone': (context) => XylophoneApp(),
//         '/MineSweeper': (context) => MineSweeper_main_screen(),
//         '/videoPlayer': (context) => videoPlayer(myVideoId: '0aqLwHP4y6Q',),
//       },
//
//     );
//   }
// }
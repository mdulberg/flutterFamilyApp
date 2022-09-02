import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thedulbergs_v1/pages/home.dart';
import 'package:thedulbergs_v1/pages/maps.dart';
import 'package:thedulbergs_v1/pages/video_player.dart';

const String homeRoute = '/';
const String mickyRoute = '/micky';
const String budapestRoute = '/budapest';
const String videoRoute = '/videoRoute';
const String mapRoute = 'lala';
class MyRouter {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case homeRoute:
        return CupertinoPageRoute(builder: (BuildContext context) => Home());
      case mapRoute:
        return CupertinoPageRoute(builder: (BuildContext context) => MapSample());

      default: return CupertinoPageRoute(builder: (BuildContext context) => Home());

      // case homeRoute:
      //   return MaterialPageRoute(builder: (_) => Home());

      // case mickyRoute:
      //   return MaterialPageRoute(
      //       builder: (_) => videoPlayer(myVideoId: '0aqLwHP4y6Q',singer: "Toni Basil",songName: "Hey Micky",data: 'mmm',));
      // case budapestRoute:
      //   var data = settings.arguments as String;
      //   return MaterialPageRoute(
      //       builder: (_) => videoPlayer(myVideoId: 'VHrLPs3_1Fs',singer: "George Ezra",songName: "Budapest", data: data,));

      // default:
      //   return MaterialPageRoute(
      //       builder: (_) =>
      //           Scaffold(
      //             body: Center(
      //                 child: Text('No route defined for ${settings.name}')),
      //           ));
    }
  }
}
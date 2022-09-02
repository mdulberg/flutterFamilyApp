import 'package:flutter/material.dart';
import 'package:thedulbergs_v1/pages/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../functions/functions.dart';
import '../router.dart';
import 'video_screen.dart';

class daniel_songs_page extends StatefulWidget {
  const daniel_songs_page({Key? key}) : super(key: key);

  @override
  State<daniel_songs_page> createState() => _daniel_songs_pageState();
}

class _daniel_songs_pageState extends State<daniel_songs_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
        title: Text('Daniel\'s Song Page', style: custTextStyle.style_appBar),
        centerTitle: true,
        elevation: 15,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(8),
          children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 120,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset('assets/Daniel/daniel_face2.jpg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            cardBuilder(
              songAvatar: 'Daniel/stay.jpg',
              onPressed: () {
                //Navigator.pushNamed(context, budapestRoute);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => videoPlayer(
                        myVideoId: 'kTJczUoc26U',
                        singer: "Justin Bieber",
                        songName: "STAY")));
              },
              songName: 'STAY',
              singer: 'Justin Bieber',
              link: 'kTJczUoc26U',
            ),
            cardBuilder(
              songAvatar: 'Daniel/footloose.jpg',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => videoPlayer(
                        myVideoId: 'ltrMfT4Qz5Y',
                        singer: "Kenny Loggins",
                        songName: "Footloose")));
              },
              songName: 'Footloose',
              singer: 'Kenny Loggins',
              link: 'ltrMfT4Qz5Y',
            ),
            cardBuilder(
              songAvatar: 'Daniel/standing.jpg',
              songName: 'I\'m Still Standing',
              singer: 'Elton John',
              link: 'ZHwVBirqD2s',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => videoPlayer(
                        myVideoId: 'ZHwVBirqD2s',
                        singer: 'Elton John',
                        songName: "I\'m Still Standing")));
              },
            ),
            cardBuilder(
              songAvatar: 'micky.gif',
              songName: 'Hey Micky',
              singer: 'Toni Basil',
              link: '0aqLwHP4y6Q',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => videoPlayer(
                        myVideoId: '0aqLwHP4y6Q',
                        singer: 'Toni Basil',
                        songName: "Hey Mickey")));
              },
            ),
            cardBuilder(
              songAvatar: 'Daniel/holding.jpg',
              songName: 'There\'s Nothing Holdin\' Me Back',
              singer: 'Shawn Mendes',
              link: 'dT2owtxkU8k',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => videoPlayer(
                        myVideoId: 'dT2owtxkU8k',
                        singer: 'Shawn Mendes',
                        songName: "There\'s Nothing Holdin\' Me Back")));
              },
            ),
            cardBuilder(
              songAvatar: 'rick.gif',
              songName: 'Never Gonna Give You Up',
              singer: 'Rick Astley',
              link: 'dQw4w9WgXcQ',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => videoPlayer(
                        myVideoId: 'dQw4w9WgXcQ',
                        singer: 'Rick Astley',
                        songName: "Never Gonna Give You Up")));
              },
            ),
          ],
        ),
      ),
    );
  }
}

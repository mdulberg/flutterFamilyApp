import 'package:flutter/material.dart';
import 'package:thedulbergs_v1/pages/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../functions/functions.dart';
import '../router.dart';
import 'video_screen.dart';

class shaya_songs_page extends StatefulWidget {
  const shaya_songs_page({Key? key}) : super(key: key);

  @override
  State<shaya_songs_page> createState() => _shaya_songs_pageState();
}

class _shaya_songs_pageState extends State<shaya_songs_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Shaya\'s Song Page', style: custTextStyle.style_appBar),
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
                child: Image.asset('assets/shaya_face1.jpg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            cardBuilder(
              songAvatar: 'budapest.jpg',
              onPressed: () {
                //Navigator.pushNamed(context, budapestRoute);
                Navigator.of(context). push(
                    MaterialPageRoute(builder: (ctx) => videoPlayer(myVideoId: 'VHrLPs3_1Fs',singer: "George Ezra",songName: "Budapest")
                    )
                );
              },
              songName: 'Budapest',
              singer: 'George Ezra',
              link: 'VHrLPs3_1Fs',
            ),
            cardBuilder(
              songAvatar: 'mean.jpg',
              onPressed: () {
                Navigator.of(context). push(
                  MaterialPageRoute(builder: (ctx) => videoPlayer(myVideoId: 'jYa1eI1hpDE',singer: "Taylor Swift",songName: "Mean")
                  )
                );
              },
              songName: 'Mean',
              singer: 'Taylor Swift',
              link: 'jYa1eI1hpDE',
            ),
            cardBuilder(
              songAvatar: 'black_or_white.jpg',
              songName: 'Black or White',
              singer: 'Michael Jackson',
              link: 'F2AitTPI5U0',
              onPressed: () {
                Navigator.of(context). push(
                    MaterialPageRoute(builder: (ctx) => videoPlayer(myVideoId: 'F2AitTPI5U0',singer: 'Michael Jackson' ,songName: "Black or White")
                    )
                );
              },
            ),
            cardBuilder(
              songAvatar: 'micky.gif',
              songName: 'Hey Micky',
              singer: 'Toni Basil',
              link: '0aqLwHP4y6Q',
              onPressed: () {
                Navigator.of(context). push(
                    MaterialPageRoute(builder: (ctx) => videoPlayer(myVideoId: '0aqLwHP4y6Q',singer: 'Toni Basil' ,songName: "Hey Mickey")
                    )
                );
              },
            ),
            cardBuilder(
              songAvatar: 'karmachameleon.jpg',
              songName: 'Karma Chameleon',
              singer: 'Culture Club',
              link: 'JmcA9LIIXWw',
              onPressed: () {
                Navigator.of(context). push(
                    MaterialPageRoute(builder: (ctx) => videoPlayer(myVideoId: 'JmcA9LIIXWw',singer: 'Culture Club' ,songName: "Karma Chameleon")
                    )
                );
              },

            ),
            cardBuilder(
              songAvatar: 'rick.gif',
              songName: 'Never Gonna Give You Up',
              singer: 'Rick Astley',
              link: 'dQw4w9WgXcQ',
              onPressed: () {
                Navigator.of(context). push(
                    MaterialPageRoute(builder: (ctx) => videoPlayer(myVideoId: 'dQw4w9WgXcQ',singer: 'Rick Astley' ,songName: "Never Gonna Give You Up")
                    )
                );
              },

            ),
          ],
        ),
      ),
    );
  }
}

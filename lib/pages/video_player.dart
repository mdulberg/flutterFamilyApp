import 'package:flutter/material.dart';
import 'package:thedulbergs_v1/functions/functions.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


// class videoPlayer extends StatefulWidget {
//   const videoPlayer({Key? key}) : super(key: key);
//
//   @override
//   State<videoPlayer> createState() => _videoPlayerState();
// }
//
// class _videoPlayerState extends State<videoPlayer> {
//   Color mainColor = Colors.deepOrange.shade300;
//   //String dataSource =
//   //    "https://cdn.flowplayer.com/a30bd6bc-f98b-47bc-abf5-97633d4faea0/hls/de3f6ca7-2db3-4689-8160-0f574a5996ad/playlist.m3u8";
//   String dataSource = "https://youtu.be/0aqLwHP4y6Q";
//
//   // Making a video controller
//   VideoPlayerController? _controller;
//   // initializing the controller
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _controller = VideoPlayerController.network(dataSource)
//       ..initialize().then((_) {
//         setState(() {});
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: mainColor,
//       appBar: AppBar(
//         backgroundColor: mainColor,
//         elevation: 1,
//         title: Text("Video Player"),
//         centerTitle: true,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // checking the video is loaded
//           _controller!.value.isInitialized
//               ? AspectRatio(
//                   aspectRatio: _controller!.value.aspectRatio,
//                   child: VideoPlayer(_controller!),
//                 )
//               : Container(),
//           // Progress indicator
//           VideoProgressIndicator(
//             _controller!,
//             allowScrubbing: true,
//             padding: EdgeInsets.all(0),
//           ),
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.skip_previous,
//                     color: Colors.white,
//                   )),
//               IconButton(
//                   onPressed: () {
//                     _controller!.value.isPlaying
//                         ? _controller!.pause()
//                         : _controller!.play();
//                   },
//                   icon: Icon(
//                     Icons.play_arrow,
//                     color: Colors.white,
//                   )),
//               IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.skip_next,
//                     color: Colors.white,
//                   )),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(18.0),
//             child: Text(
//               "Video name here",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 28,
//                   color: Colors.white),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(18.0),
//             child: Text(
//               "Video artist",
//               style: TextStyle(
//                   fontWeight: FontWeight.normal,
//                   fontSize: 28,
//                   color: Colors.white60),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


class videoPlayer extends StatelessWidget {

  late final String myVideoId;
  late final String singer;
  late final String songName;
  videoPlayer({required this.myVideoId, required this.singer, required this.songName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.purpleAccent,
          title: Text(songName, style: custTextStyle.style_buttonoverlay,),
        ),
        body: YoutubePlayer(
          //controller: _controller,
          controller: YoutubePlayerController(
            initialVideoId: myVideoId,
            flags: const YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          ),
          liveUIColor: Colors.amber,
        ));
  }
}
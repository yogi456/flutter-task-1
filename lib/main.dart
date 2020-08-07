import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Page1(),
  ));
}

var url = "https://unsplash.com/photos/fBTd3Xng5j0/download?force=true";
var myimage = Image.network(
  url,
  width: double.infinity,
  height: double.infinity,
  fit: BoxFit.cover,
);
var my_player = VideoPlayerController.asset('myvideos/iiec-python.MP4');
var ch = ChewieController(
  videoPlayerController: my_player,
  aspectRatio: 1.5,
  autoPlay: true,
  looping: false,
);
var sec_player = VideoPlayerController.network(
    "https://elasticbeanstalk-ap-south-1-204664381562.s3.ap-south-1.amazonaws.com/Paniyon+Sa+-+Satyameva+Jayate+(HD+720p).mp4");

var cont1 = ChewieController(
  videoPlayerController: sec_player,
  aspectRatio: 1.5,
  autoPlay: true,
  looping: false,
);

var third_player = VideoPlayerController.network(
    "https://elasticbeanstalk-ap-south-1-204664381562.s3.ap-south-1.amazonaws.com/Dil+Meri+Na+Sune+-+Genius+(HD+720p)(1).mp4");

var cont2 = ChewieController(
  videoPlayerController: third_player,
  aspectRatio: 1.5,
  autoPlay: true,
  looping: false,
);
var player = VideoPlayerController.network(
    "https://yogilookbook.s3.ap-south-1.amazonaws.com/Aaj+Ki+Party+-+Bajrangi+Bhaijaan+-+HQ.mp4");

var cont4 = ChewieController(
  videoPlayerController: third_player,
  aspectRatio: 1.5,
  autoPlay: true,
  looping: false,
);
var aayat = VideoPlayerController.network(
    "https://yogilookbook.s3.ap-south-1.amazonaws.com/Aayat+-+Video+Song+-+Bajirao+Mastani+-+MP4.mp4");

var cont3 = ChewieController(
  videoPlayerController: aayat,
  aspectRatio: 1.5,
  autoPlay: true,
  looping: false,
);
AudioPlayer audioPlayer = AudioPlayer();
var audioplay = AudioPlayer();
var song = AudioCache(fixedPlayer: audioplay);
pause() {
  audioplay.pause();
}

stop() {
  audioplay.stop();
}

class Page1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music & video App "),
        actions: <Widget>[Icon(Icons.audiotrack), Icon(Icons.music_video)],
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: RaisedButton(
              textColor: Colors.orangeAccent,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text('Audio From Assets',
                    style: TextStyle(fontSize: 20)),
              ),
              onPressed: () {
                Navigator.of(context).push(_createRoute7());
              },
            ),
          ),
          Container(
              child: RaisedButton(
            textColor: Colors.deepOrangeAccent,
            padding: const EdgeInsets.all(2.2),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              //margin: const EdgeInsets.all(20.0),
              child: const Text('Audio From Network',
                  style: TextStyle(fontSize: 20)),
            ),
            onPressed: () {
              Navigator.of(context).push(_createRoute9());
            },
          )),

          Container(
              child: RaisedButton(
            textColor: Colors.black,
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              //padding: const EdgeInsets.all(10.0),
              child: const Text('Video From Network',
                  style: TextStyle(fontSize: 20)),
            ),
            onPressed: () {
              Navigator.of(context).push(Video_network());
            },
          )),
          Container(
              child: RaisedButton(
            textColor: Colors.greenAccent,
            padding: const EdgeInsets.all(2.2),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text('Video From Assets',
                  style: TextStyle(fontSize: 20)),
            ),
            onPressed: () {
              Navigator.of(context).push(_video_asset());
            },
          )),
          Container(
              child: RaisedButton(
            textColor: Colors.greenAccent,
            padding: const EdgeInsets.all(2.2),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text('Video Galary', style: TextStyle(fontSize: 20)),
            ),
            onPressed: () => Navigator.of(context).push(_createRoute2()),
          )),

          // onPressed: () => Navigator.of(context).push(_createRoute2()),  video galary

          Container(
              child: RaisedButton(
            textColor: Colors.white,
            padding: const EdgeInsets.all(2.2),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child:
                  const Text('Audio + video', style: TextStyle(fontSize: 20)),
            ),
            onPressed: () {
              Navigator.of(context).push(_createRoute5());
            },
          )),

          Container(
              child: RaisedButton(
            textColor: Colors.white,
            padding: const EdgeInsets.all(2.2),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text('Simple Video Player',
                  style: TextStyle(fontSize: 20)),
            ),
            onPressed: () {
              Navigator.of(context).push(_createRoute6());
            },
          )),

          //Container(
          // child: RaisedButton(
          //  child: Text("Simple Video Player "),
          //  onPressed: () => Navigator.of(context).push(_createRoute6()),
          //),
          // )
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute5() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page5(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute1() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page3(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page4(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute9() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Audio_network(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route Video_network() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Video_networks(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute6() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => VideoApp(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _video_asset() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => video_assets(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute7() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Audio_Asset(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.topLeft,
              width: 100,
              height: 100,
              color: Colors.black)
        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.topLeft,
              width: 100,
              height: 100,
              color: Colors.blueAccent)
        ],
      ),
    );
  }
}

class Video_networks extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
            child: Expanded(
              flex: 6,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Chewie(
                      controller: cont4,
                    ),
                  ),
                ),
                elevation: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class video_assets extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
            child: Expanded(
              flex: 6,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Chewie(
                      controller: ch,
                    ),
                  ),
                ),
                elevation: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://yogilookbook.s3.ap-south-1.amazonaws.com/Aaj+Ki+Party+-+Bajrangi+Bhaijaan+-+HQ.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller.value.initialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class Page4 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Video Player"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 300.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 300.0,
                //color: Colors.amber,
                child: Container(
                  //width: 400,
                  //height: 400,
                  //color: Colors.blue.shade100,
                  // margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://elasticbeanstalk-ap-south-1-204664381562.s3.ap-south-1.amazonaws.com/iuieecc.jpg'),
                      ),
                      //borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.amber.shade600),
                      borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    width: 300,
                    child: Chewie(
                      controller: ch,
                    ),
                  ),
                ),
              ),
              Container(
                  width: 300.0,
                  //color: Colors.yellow,

                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://m.media-amazon.com/images/M/MV5BYzYxNGI3MmYtMWQyMi00NmViLWE0ZWQtNWM5ZTY3NTIxNzU0XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg'),
                          fit: BoxFit.cover),
                      //borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.amber.shade600),
                      borderRadius: BorderRadius.circular(12)),
                  child: Chewie(
                    controller: cont1,
                  )),
              // Container(
              // width: 300.0,
              //color: Colors.orange,
              //child: Chewie(
              // controller: cont2,
              // ),
              //),
              Container(
                  width: 300.0,
                  //color: Colors.yellow,

                  decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://timesofindia.indiatimes.com/photo/61979945.cms'),
                          fit: BoxFit.cover),
                      //borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.amber.shade600),
                      borderRadius: BorderRadius.circular(12)),
                  child: Chewie(
                    controller: cont2,
                  )),
              Container(
                  width: 300.0,
                  //color: Colors.yellow,

                  decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i.ytimg.com/vi/85LA5CKMW_I/maxresdefault.jpg'),
                          fit: BoxFit.cover),
                      //borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.amber.shade600),
                      borderRadius: BorderRadius.circular(12)),
                  child: Chewie(
                    controller: cont3,
                  )),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Page5 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Yogi Music",
            style: TextStyle(),
          ),
          centerTitle: true,
          elevation: 10.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.library_music,
                color: Colors.amber.shade500,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset("images/yogesh.jpg"),
                ),
                elevation: 10.0,
                color: Color.fromARGB(20, 126, 126, 128),
                shadowColor: Color.fromRGBO(185, 120, 150, 10),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.play_circle_filled),
                    onPressed: () =>
                        //song.play('chup.mp3', isNotification: true),
                        audioPlayer.play(
                            "https://elasticbeanstalk-ap-south-1-204664381562.s3.ap-south-1.amazonaws.com/Yaro+Ne+Mere+Vaste+-+Friends+Anthem.mp3"),
                    iconSize: 55.0,
                    autofocus: true,
                    tooltip: "Play Song",
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.pause_circle_filled),
                    onPressed: audioPlayer.pause,
                    iconSize: 55.0,
                    autofocus: true,
                    tooltip: "Pause-song",
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.stop),
                    onPressed: audioPlayer.stop,
                    highlightColor: Colors.grey.shade600,
                    splashColor: Color.fromARGB(152, 120, 120, 120),
                    iconSize: 55.0,
                    tooltip: "Stop-Music",
                  )
                ],
              ),
            ),
            Container(
              child: Expanded(
                flex: 6,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      child: Chewie(
                        controller: cont1,
                      ),
                    ),
                  ),
                  elevation: 5.0,
                ),
              ),
            ),
          ],
        ));
  }
}

//audio from assets:-

class Audio_Asset extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Yogi Music",
            style: TextStyle(),
          ),
          centerTitle: true,
          elevation: 10.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.library_music,
                color: Colors.amber.shade500,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Card(
                child: Container(
                    // padding: EdgeInsets.all(10.0),

                    decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            'https://img.onmanorama.com/content/dam/mm/en/entertainment/entertainment-news/images/2020/6/25/dil-bechara.jpg',
                          ),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.amber.shade600))),
                elevation: 10.0,
                // color: Color.fromARGB(20, 126, 126, 128),
                //shadowColor: Color.fromRGBO(185, 120, 150, 10),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.play_circle_filled),
                    onPressed: () => song.play('Taare Ginn - Dil Bechara.mp3'),
                    iconSize: 55.0,
                    autofocus: true,
                    tooltip: "Play Song",
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.pause_circle_filled),
                    onPressed: pause,
                    iconSize: 55.0,
                    autofocus: true,
                    tooltip: "Pause-song",
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.stop),
                    onPressed: stop,
                    highlightColor: Colors.grey.shade600,
                    splashColor: Color.fromARGB(152, 120, 120, 120),
                    iconSize: 55.0,
                    tooltip: "Stop-Music",
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class Audio_network extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Yogi Music",
            style: TextStyle(),
          ),
          centerTitle: true,
          elevation: 10.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.library_music,
                color: Colors.amber.shade500,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/474x/d2/23/33/d223333bb2eb910219ed11f6de83a755.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black,
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                elevation: 10.0,
                color: Color.fromARGB(20, 126, 126, 128),
                shadowColor: Color.fromRGBO(185, 120, 150, 10),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.play_circle_filled),
                    onPressed: () =>
                        //song.play('chup.mp3', isNotification: true),
                        audioPlayer.play(
                            "https://yogilookbook.s3.ap-south-1.amazonaws.com/Ik+Vaari+Aa-Nadaan+Parindey.mp3"),
                    iconSize: 55.0,
                    autofocus: true,
                    tooltip: "Play Song",
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.pause_circle_filled),
                    onPressed: audioPlayer.pause,
                    iconSize: 55.0,
                    autofocus: true,
                    tooltip: "Pause-song",
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.stop),
                    onPressed: audioPlayer.stop,
                    highlightColor: Colors.grey.shade600,
                    splashColor: Color.fromARGB(152, 120, 120, 120),
                    iconSize: 55.0,
                    tooltip: "Stop-Music",
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

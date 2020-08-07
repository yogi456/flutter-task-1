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
        actions: <Widget>[Icon(Icons.access_time)],
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: RaisedButton(
              child: Text('Go!'),
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
            ),
          ),
          Container(
            child: RaisedButton(
                child: Text("Play"),
                onPressed: () => Navigator.of(context).push(_createRoute1())),
          ),
          Container(
            child: RaisedButton(
              child: Text("video"),
              onPressed: () => Navigator.of(context).push(_createRoute2()),
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("video+audio"),
              onPressed: () => Navigator.of(context).push(_createRoute5()),
            ),
          )
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
                      controller: cont1,
                    ),
                  ),
                ),
              ),
              /* Container(
                width: 300.0,
                height: 300.0,

                //color: Colors.blue,

                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/kavita345/flutter/master/IMG-20171124-WA0069.jpg'),
                    ),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
              ),
              Container(
                width: 300.0,
                //color: Colors.green,
                child: Chewie(
                  controller: ch,
                ),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
              ),
          */
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
              Container(
                width: 300.0,
                color: Colors.orange,
                child: Chewie(
                  controller: cont2,
                ),
              ),
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
                    onPressed: () => song.play(
                        'https://elasticbeanstalk-ap-south-1-204664381562.s3.ap-south-1.amazonaws.com/Yaro+Ne+Mere+Vaste+-+Friends+Anthem.mp3'),
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

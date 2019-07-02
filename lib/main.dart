import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

import 'ambient_watch_face.dart';
import 'start_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Wear App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: WatchScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WatchShape(
      builder: (context, shape) {
        return InheritedShape(
          shape: shape,
          child: AmbientMode(
            builder: (context, mode) {
              if (mode == Mode.active) {
                print("mode active");
                return StartScreen();
              } else {
                print("mode not active");
                return AmbientWatchFace();
              }
            },
          ),
        );
      },
    );
  }
}


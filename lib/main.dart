import 'package:flutter/material.dart';
import 'package:video_player_flutter/screens/listagem.dart';

void main() {
  runApp(const VideoPlayerApp());
}

class VideoPlayerApp extends StatelessWidget {
  const VideoPlayerApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VideoPlayerFlutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListagemVideos(),
    );
  }
}

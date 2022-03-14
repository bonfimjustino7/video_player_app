import 'package:flutter/material.dart';
import 'package:video_player_flutter/data/videos.dart';
import 'package:video_player_flutter/models/video.dart';
import 'package:video_player_flutter/screens/player.dart';

class ListagemVideos extends StatelessWidget {
  const ListagemVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vídeos Disponíveis')),
      body: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: listagemVideos.length,
        itemBuilder: (context, index) {
          Video video = listagemVideos[index];
          var subtitle = video.type.name;

          return ListTile(
            title: Text(listagemVideos[index].nome),
            subtitle: Text('Vídeo from $subtitle'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeVideoPlayer(
                    video: video,
                  ),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}

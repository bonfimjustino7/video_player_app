enum Type {
  assets,
  network,
}

class Video {
  final String nome;
  final Type type;
  final String url;

  const Video({
    required this.nome,
    required this.type,
    required this.url,
  });
}

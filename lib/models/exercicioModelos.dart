class Exercicio {
  String? id;
  String? name;
  String? treino;
  String? comoFazer;
  String? urlImg;

  Exercicio(
      {required this.id,
      required this.name,
      required this.treino,
      required this.comoFazer,
      required this.urlImg});

  Exercicio.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        treino = map['treino'],
        comoFazer = map['comoFazer'],
        urlImg = map['urlImg'];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'treino': treino,
      'comoFazer': comoFazer,
      'urlImg': urlImg
    };
  }
}

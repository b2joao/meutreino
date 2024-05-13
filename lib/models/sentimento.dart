class Sentimento {
  String? id;
  String? sente;
  String? data;

  Sentimento({required this.id, required this.data, required this.sente});

  Sentimento.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        sente = map['sente'],
        data = map['mapa'];
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'sente': sente,
      'data': data,
    };
  }
}

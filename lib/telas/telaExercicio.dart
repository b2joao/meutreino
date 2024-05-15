import 'package:flutter/material.dart';
import 'package:meutreino/Custom/custom.dart';
import 'package:meutreino/models/exercicioModelos.dart';
import 'package:meutreino/models/sentimento.dart';

class TelaExercicio extends StatelessWidget {
  TelaExercicio({super.key});

  final Exercicio exercicio = Exercicio(
      id: '1',
      name: 'joao',
      treino: 'supino',
      comoFazer: 'comoFazer',
      urlImg: 'urlImg');
  final List<Sentimento> listasentimos = [
    Sentimento(id: '01', data: '2024-12-05', sente: 'sente que ta go'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        shadowColor: Colors.black54,
        title: Text('${exercicio.comoFazer}',
            style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor:
            MaterialStateColor.resolveWith((states) => Colors.blue),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              8.0,
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              CustomButtom(onPressed: () {}, title: 'Clique aqui'),
              const SizedBox(
                height: 20.0,
              ),
                            const Text(
                "Como fazer",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(exercicio.treino.toString()),
              const Text(
                "Como estou sentindor",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Divider(color: Colors.blueGrey,),
              Column(
                  children: List.generate(listasentimos.length, (index) {
                Sentimento sentimentoGerado = listasentimos[index];
                return ListTile(
                  title: Text(sentimentoGerado.sente.toString(),
                   style: const TextStyle(fontWeight: FontWeight.w600), ),
                  subtitle: Text(sentimentoGerado.data.toString()),
                );
              }))
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}

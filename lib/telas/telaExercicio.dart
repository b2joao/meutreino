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
    Sentimento(id: '01', data: '2024-12-05', sente: 'sente algo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Puxada alta',
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.white)),
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CustomButtom(onPressed: () {}, title: 'Clicar'),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CustomButtom(onPressed: () {}, title: 'Voltar'),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:meutreino/Custom/custom.dart';

class TelaExercicio extends StatelessWidget {
  const TelaExercicio({super.key});

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
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.blue),
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

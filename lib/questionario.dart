import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
    super.key,
  });

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> respostas =
        perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>;

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas.map(
          (resp) => Resposta(
              resp['texto'] as String,
              () => responder(resp['pontuacao'] as int)
          ),
        ),
      ],
    );
  }
}

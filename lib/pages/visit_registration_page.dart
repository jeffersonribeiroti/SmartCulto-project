import 'package:flutter/material.dart';

class VisitRegistrationPage extends StatefulWidget {
  const VisitRegistrationPage({super.key});

  @override
  State<VisitRegistrationPage> createState() => _VisitRegistrationPageState();
}

class _VisitRegistrationPageState extends State<VisitRegistrationPage> {
  final nome = TextEditingController();
  final denominacao = TextEditingController();

  bool cristao = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastrar Visitante")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(controller: nome, decoration: const InputDecoration(labelText: "Nome")),

            SwitchListTile(
              title: const Text("É cristão?"),
              value: cristao,
              onChanged: (v) => setState(() => cristao = v),
            ),

            if (cristao)
              TextField(
                controller: denominacao,
                decoration: const InputDecoration(labelText: "Denominação"),
              ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  "nome": nome.text,
                  "cristao": cristao,
                  "denominacao": denominacao.text,
                });
              },
              child: const Text("Salvar"),
            )
          ],
        ),
      ),
    );
  }
}
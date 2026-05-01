import 'package:flutter/material.dart';

class NovoCultoPage extends StatefulWidget {
  const NovoCultoPage({super.key});

  @override
  State<NovoCultoPage> createState() => _NovoCultoPageState();
}

class _NovoCultoPageState extends State<NovoCultoPage> {
  final titulo = TextEditingController();
  final data = TextEditingController();
  final hora = TextEditingController();

  final Color primaryColor = const Color(0xFF0B3B6E);

  void salvar() {
    if (titulo.text.isEmpty ||
        data.text.isEmpty ||
        hora.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Preencha todos os campos")),
      );
      return;
    }

    Navigator.pop(context, {
      "titulo": titulo.text,
      "data": data.text,
      "hora": hora.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo Culto"),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: titulo,
              decoration: const InputDecoration(labelText: "Título"),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: data,
              decoration: const InputDecoration(labelText: "Data"),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: hora,
              decoration: const InputDecoration(labelText: "Hora"),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: salvar,
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  "Salvar",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
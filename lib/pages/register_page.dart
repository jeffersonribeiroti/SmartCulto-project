import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final Color primaryColor = const Color(0xFF0B3B6E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(decoration: const InputDecoration(labelText: "Usuário")),
            TextField(decoration: const InputDecoration(labelText: "Email")),
            TextField(obscureText: true, decoration: const InputDecoration(labelText: "Senha")),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cadastrar"),
            )
          ],
        ),
      ),
    );
  }
}
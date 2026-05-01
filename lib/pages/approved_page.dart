import 'package:flutter/material.dart';

class ApprovedPage extends StatelessWidget {
  ApprovedPage({super.key});

  final Color primaryColor = const Color(0xFF0B3B6E);
  final Color yellowColor = const Color(0xFFC9A300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 🔝 Topo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Santuário Ressonante",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: const Icon(Icons.shield),
                  )
                ],
              ),

              const SizedBox(height: 20),

              // 🔶 Ícone
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: yellowColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.verified, color: Colors.black),
              ),

              const SizedBox(height: 20),

              // 📝 Título
              Text(
                "Acesso Aprovado",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Seu registro foi validado com sucesso.\n"
                "Agora, defina sua senha de acesso ao Santuário.",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 20),

              // 📦 Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 10)
                  ],
                ),
                child: Column(
                  children: [

                    // 🔐 Nova senha
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Nova Senha",
                        filled: true,
                        fillColor: Colors.grey[200],
                        suffixIcon: const Icon(Icons.visibility),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // 🔐 Confirmar senha
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirmar Senha",
                        filled: true,
                        fillColor: Colors.grey[200],
                        suffixIcon: const Icon(Icons.visibility),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // 📌 Requisitos
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "REQUISITOS DE SEGURANÇA",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 5),
                        Text("✔ Mínimo de 8 caracteres"),
                        Text("✔ Incluir um número ou símbolo"),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // 🔘 Botão
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Concluir Cadastro →",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
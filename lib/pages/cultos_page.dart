import 'package:flutter/material.dart';
import 'novo_culto_page.dart';
import 'visitantes_page.dart';

class CultosPage extends StatefulWidget {
  const CultosPage({super.key});

  @override
  State<CultosPage> createState() => _CultosPageState();
}

class _CultosPageState extends State<CultosPage> {
  List<Map<String, dynamic>> cultos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cultos")),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => NovoCultoPage()),
          );

          if (result != null) {
            setState(() {
              result["visitantes"] = [];
              cultos.add(result);
            });
          }
        },
        child: const Icon(Icons.add),
      ),

      body: cultos.isEmpty
          ? const Center(child: Text("Nenhum culto"))
          : ListView.builder(
              itemCount: cultos.length,
              itemBuilder: (_, i) {
                final c = cultos[i];

                return ListTile(
                  title: Text(c["titulo"]),
                  subtitle: Text("${c["data"]} • ${c["hora"]}"),
                  trailing: Text("${c["visitantes"].length} visitantes"),

                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => VisitantesPage(culto: c),
                      ),
                    );

                    setState(() {});
                  },
                );
              },
            ),
    );
  }
}
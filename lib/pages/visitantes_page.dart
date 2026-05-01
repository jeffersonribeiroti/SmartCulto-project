import 'package:flutter/material.dart';
import 'visit_registration_page.dart';

class VisitantesPage extends StatefulWidget {
  final Map<String, dynamic> culto;

  const VisitantesPage({super.key, required this.culto});

  @override
  State<VisitantesPage> createState() => _VisitantesPageState();
}

class _VisitantesPageState extends State<VisitantesPage> {
  late List visitantes;

  @override
  void initState() {
    visitantes = widget.culto["visitantes"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.culto["titulo"])),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const VisitRegistrationPage(),
            ),
          );

          if (result != null) {
            setState(() {
              visitantes.add(result);
            });
          }
        },
        child: const Icon(Icons.person_add),
      ),

      body: visitantes.isEmpty
          ? const Center(child: Text("Nenhum visitante"))
          : ListView.builder(
              itemCount: visitantes.length,
              itemBuilder: (_, i) {
                final v = visitantes[i];
                return ListTile(
                  title: Text(v["nome"]),
                  subtitle: v["cristao"]
                      ? Text("Cristão • ${v["denominacao"]}")
                      : const Text("Não cristão"),
                );
              },
            ),
    );
  }
}
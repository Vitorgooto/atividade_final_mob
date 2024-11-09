import 'package:flutter/material.dart';
import '../repositories/fishing_repository.dart';
import '../models/fishing_item.dart';

class FishingItemFormScreen extends StatelessWidget {
  final FishingRepository repository = FishingRepository();
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController pesoIscaController = TextEditingController();
  final TextEditingController materialController = TextEditingController();
  final TextEditingController tipoController = TextEditingController();
  final TextEditingController ambienteController = TextEditingController();

  void saveItem(BuildContext context) {
    final item = FishingItem(
      nome: nomeController.text,
      peso: int.tryParse(pesoController.text) ?? 0,
      pesoIsca: int.tryParse(pesoIscaController.text) ?? 0,
      material: materialController.text,
      tipo: tipoController.text,
      ambiente: ambienteController.text,
    );
    repository.addItem(item).then((_) {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Equipamento de Pesca'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nomeController,
              decoration: InputDecoration(labelText: 'Nome', border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextField(
              controller: pesoController,
              decoration: InputDecoration(labelText: 'Peso (g)', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: pesoIscaController,
              decoration: InputDecoration(labelText: 'Peso da Isca (g)', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: materialController,
              decoration: InputDecoration(labelText: 'Material', border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextField(
              controller: tipoController,
              decoration: InputDecoration(labelText: 'Tipo', border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextField(
              controller: ambienteController,
              decoration: InputDecoration(labelText: 'Ambiente', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), backgroundColor: Colors.green),
              onPressed: () => saveItem(context),
              child: Text('Salvar', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

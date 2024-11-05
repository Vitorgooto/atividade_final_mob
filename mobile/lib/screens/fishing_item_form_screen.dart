import 'package:flutter/material.dart';
import '../repositories/fishing_repository.dart';
import '../models/fishing_item.dart';

class FishingItemFormScreen extends StatelessWidget {
  final FishingRepository repository = FishingRepository();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  void saveItem(BuildContext context) {
    final name = nameController.text;
    final weight = double.tryParse(weightController.text) ?? 0.0;
    final item = FishingItem(name: name, weight: weight);
    repository.addItem(item).then((_) {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Item de Pesca'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: weightController,
              decoration: InputDecoration(
                labelText: 'Peso (kg)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                backgroundColor: Colors.green,
              ),
              onPressed: () => saveItem(context),
              child: Text('Salvar', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

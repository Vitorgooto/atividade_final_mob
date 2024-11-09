import 'package:flutter/material.dart';
import '../repositories/fishing_repository.dart';
import '../models/fishing_item.dart';
import '../widgets/fishing_item_card.dart';

class FishingItemListScreen extends StatelessWidget {
  final FishingRepository repository = FishingRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Equipamentos de Pesca'),
        backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder(
        future: repository.fetchItems(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final items = snapshot.data as List<FishingItem>;
            return ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return FishingItemCard(item: items[index]);
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar equipamentos'));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/form');
        },
        label: Text('Adicionar Equipamento'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}

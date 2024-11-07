import 'package:flutter/material.dart';
import '../models/fishing_item.dart';

class FishingItemCard extends StatelessWidget {
  final FishingItem item;

  const FishingItemCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(Icons.sailing, color: Colors.blueAccent, size: 40),
        title: Text(
          item.name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Peso: ${item.weight} kg'),
      ),
    );
  }
}

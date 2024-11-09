import 'package:tralha_de_pesca/repositories/fishing_repository.dart';
import 'package:tralha_de_pesca/models/fishing_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final repository = FishingRepository();

  test('Busca itens de pesca do backend', () async {
    final items = await repository.fetchItems();
    expect(items.isNotEmpty, true);
  });

  test('Adiciona um item de pesca ao backend', () async {
    final item = FishingItem(
      nome: 'Linha de Pesca',
      peso: 100,
      pesoIsca: 10,
      material: 'Nylon',
      tipo: 'Linha',
      ambiente: 'Água Doce',
    );
    await repository.addItem(item);
    final items = await repository.fetchItems();
    expect(items.any((i) => i.nome == 'Linha de Pesca'), true);
  });
}

import 'package:tralha_de_pesca/models/fishing_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Verifica inicialização de FishingItem', () {
    final item = FishingItem(
      id: 1,
      nome: 'Vara de Pesca',
      peso: 1500,
      pesoIsca: 200,
      material: 'Fibra de Carbono',
      tipo: 'Carretilha',
      ambiente: 'Água Salgada',
    );
    expect(item.nome, 'Vara de Pesca');
    expect(item.peso, 1500);
    expect(item.material, 'Fibra de Carbono');
  });
}

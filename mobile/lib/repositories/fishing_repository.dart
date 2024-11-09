import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/fishing_item.dart';

class FishingRepository {
  final String baseUrl = 'http://localhost:3000';

  Future<List<FishingItem>> fetchItems() async {
    final response = await http.get(Uri.parse('$baseUrl/EquipamentoDePesca'));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((item) => FishingItem.fromJson(item)).toList();
    } else {
      throw Exception('Erro ao buscar equipamentos de pesca');
    }
  }

  Future<void> addItem(FishingItem item) async {
    final response = await http.post(
      Uri.parse('$baseUrl/EquipamentoDePesca'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(item.toJson()),
    );
    if (response.statusCode != 201) {
      throw Exception('Erro ao adicionar equipamento de pesca');
    }
  }

  Future<void> updateItem(FishingItem item) async {
    final response = await http.put(
      Uri.parse('$baseUrl/EquipamentoDePesca/${item.id}'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(item.toJson()),
    );
    if (response.statusCode != 200) {
      throw Exception('Erro ao atualizar equipamento de pesca');
    }
  }

  Future<void> deleteItem(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/EquipamentoDePesca/$id'));
    if (response.statusCode != 200) {
      throw Exception('Erro ao deletar equipamento de pesca');
    }
  }
}

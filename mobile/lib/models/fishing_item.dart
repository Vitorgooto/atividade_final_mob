class FishingItem {
  final int? id;
  final String nome;
  final int peso;
  final int pesoIsca;
  final String material;
  final String tipo;
  final String ambiente;

  FishingItem({
    this.id,
    required this.nome,
    required this.peso,
    required this.pesoIsca,
    required this.material,
    required this.tipo,
    required this.ambiente,
  });

  factory FishingItem.fromJson(Map<String, dynamic> json) {
    return FishingItem(
      id: json['id'],
      nome: json['nome'],
      peso: json['peso'],
      pesoIsca: json['peso_isca'],
      material: json['material'],
      tipo: json['tipo'],
      ambiente: json['ambiente'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'peso': peso,
      'peso_isca': pesoIsca,
      'material': material,
      'tipo': tipo,
      'ambiente': ambiente,
    };
  }
}

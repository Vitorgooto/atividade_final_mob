import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard de Pesca'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(  // Center para centralizar todo o conteúdo na tela
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,  // Centraliza horizontalmente
            children: [
              Text(
                'Bem-vindo ao Dashboard de Pesca!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/list');
                },
                icon: Icon(Icons.list),
                label: Text('Ver Itens de Pesca', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/form');
                },
                icon: Icon(Icons.add),
                label: Text('Adicionar Novo Item', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/fishing_item_list_screen.dart';
import 'screens/fishing_item_form_screen.dart';

void main() => runApp(TralhaDePescaApp());

class TralhaDePescaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tralha de Pesca',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.greenAccent, // Define a accent color aqui
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/list': (context) => FishingItemListScreen(),
        '/form': (context) => FishingItemFormScreen(),
      },
    );
  }
}

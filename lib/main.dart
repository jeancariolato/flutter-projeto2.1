
import 'package:flutter/material.dart';

void main(){
  runApp(const MyPage());
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu Aplicativo"),
          backgroundColor: Colors.cyanAccent[200],
        ),
      ),
    );
  }
}
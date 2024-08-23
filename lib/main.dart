import 'package:flutter/material.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatefulWidget {
  MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var _cont = 0;

  final TextEditingController _editController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meu App",
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.eco),
            title: Text("ECO"),
            backgroundColor: Colors.green,
          ),
          body: Column(
            children: [
              TextField(
                controller: _editController,
                decoration: InputDecoration(labelText: "Nome"),
              ),
              ElevatedButton(
                  onPressed: () {
                    String nome = _editController.text;
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("$nome"),
                      action: SnackBarAction(label: "Ok", onPressed: () {}),
                    ));
                  },
                  child: Text("Enviar")),
              Center(
                child: Container(
                  padding: EdgeInsets.all(40),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.green)),
                  child: Text(
                    "$_cont",
                    style: TextStyle(fontSize: 30.0, color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            
            child: Icon(
              Icons.bolt,
              color: Colors.white,
            ),
            shape: CircleBorder(),
            backgroundColor: Colors.green,
            onPressed: () {
              setState(() {
                _cont += 1;
              });
              print(_cont);
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          ),
          
    );
  }
}

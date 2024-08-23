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
          body: Center(
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
          floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.upload_file_outlined,
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
          )),
    );
  }
}

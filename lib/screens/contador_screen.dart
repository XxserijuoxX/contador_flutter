import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  //const HomeScreen({Key key}) : super(key: key);
  @override
  _ContadorScreenState createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Pantalla Contador")),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador de clics', style: TextStyle(fontSize: 20)),
            Text(
              '$contador',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => setState(() => contador++),
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
          FloatingActionButton(
            onPressed: () => setState(() => contador = 0),
            child: Icon(
              Icons.undo,
              size: 30,
            ),
          ),
          FloatingActionButton(
            onPressed: () => setState(() => contador--),
            child: Icon(
              Icons.remove,
              size: 30,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}

class ContadorScreen extends StatefulWidget {
  //const HomeScreen({Key key}) : super(key: key);
  @override
  _ContadorScreenState createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int contador = 0;

  @override
  
  
  
  Widget build(BuildContext context) {
    TextStyle fontSize20 = const TextStyle (fontSize: 20);
    
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla Contador")),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador de clics', style: fontSize20),
            Text( '$contador', style: fontSize20),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => setState(() => contador++),
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
          FloatingActionButton(
            onPressed: () => setState(() => contador = 0),
            child: const Icon(
              Icons.undo,
              size: 30,
            ),
          ),
          FloatingActionButton(
            onPressed: () => setState(() => contador--),
            child: const Icon(
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

import 'package:flutter/material.dart';

class CounterMod extends StatelessWidget {
  const CounterMod({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int counter = 0;
  void increment() {
    setState((){
      counter++;
    });
  }

  void kurang() {
    setState((){
      counter--;
    });
  }

  void reset() {
    setState((){
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter and setState()"),
        backgroundColor: Color.fromRGBO(97, 160, 242, 0.8),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter", style: TextStyle(fontSize: 28)),
            SizedBox(height: 10),
            Text(
              "$counter",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: increment,
              icon: Icon(Icons.add),
              label: Text("Tambah")),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: kurang,
              icon: Icon(Icons.remove),
              label: Text("Kurang")),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: reset,
              icon: Icon(Icons.restore),
              label: Text("Reset Cuy")),
          ],
        ),
      ),
    );
  }
}
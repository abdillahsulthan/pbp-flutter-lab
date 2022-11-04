import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Program Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String result = 'GENAP';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if ((_counter - 1) == -1) {
        _counter = 0;
      } else {
        _counter--;
      }
    });
  }

  void _checkResult() {
    setState(() {
      if ((_counter % 2) == 0) {
        result = 'GENAP';
      } else {
        result = 'GANJIL';
      }
    });
  }

  Text showText() {
    if (result == 'GANJIL') {
      return Text(
        result,
        style: const TextStyle(color: Colors.blue),
      );
    } else {
      return Text(
        result,
        style: const TextStyle(color: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            showText(),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                _decrementCounter();
                _checkResult();
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
            Expanded(child: Container()),
            FloatingActionButton(
              onPressed: () {
                _incrementCounter();
                _checkResult();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}

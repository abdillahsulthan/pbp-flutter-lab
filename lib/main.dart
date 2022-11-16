import 'package:counter_7/data_budget.dart';
import 'package:counter_7/tambah_budget.dart';
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
  bool isShow = false;

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

  void _showButton() {
    setState(() {
      if (_counter == 0) {
        isShow = false;
      } else {
        isShow = true;
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

  Widget buildNavbar({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black26,
      ),
      title: Text(text),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectNavbar(BuildContext context, int index) {
    if (index == 0) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const MyHomePage(title: 'Program Counter')));
    } else if (index == 1) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const TambahBudget()));
    } else if (index == 2) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const DataBudget()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Material(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: <Widget>[
              const SizedBox(height: 24),
              buildNavbar(
                  text: 'Counter_7',
                  icon: Icons.home,
                  onClicked: () => selectNavbar(context, 0)),
              const SizedBox(height: 16),
              buildNavbar(
                  text: 'Tambah Budget',
                  icon: Icons.add_circle_outlined,
                  onClicked: () => selectNavbar(context, 1)),
              const SizedBox(height: 24),
              buildNavbar(
                  text: 'Data Budget',
                  icon: Icons.data_thresholding_outlined,
                  onClicked: () => selectNavbar(context, 2)),
            ],
          ),
        ),
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
            Visibility(
                visible: isShow,
                child: FloatingActionButton(
                  onPressed: () {
                    _decrementCounter();
                    _checkResult();
                    _showButton();
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                )),
            Expanded(child: Container()),
            FloatingActionButton(
              onPressed: () {
                _incrementCounter();
                _checkResult();
                _showButton();
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

import 'package:counter_7/view/navbar.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/budget.dart';

class DataBudget extends StatefulWidget {
  const DataBudget({super.key});

  @override
  State<DataBudget> createState() => _DataBudgetState();
}

class _DataBudgetState extends State<DataBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: const NavbarApp(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(4),
            elevation: 8,
            child: ListTile(
              title: Text(Budget.getList()[index].judul,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              subtitle: Text(Budget.getList()[index].budget.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
              trailing: Text(Budget.getList()[index].jenis,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
            ),
          );
        },
        itemCount: Budget.getList().length,
      ),
    );
  }
}

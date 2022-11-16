import 'package:counter_7/view/navbar.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/budget.dart';

class TambahBudget extends StatefulWidget {
  const TambahBudget({super.key});

  @override
  State<TambahBudget> createState() => _TambahBudgetState();
}

class _TambahBudgetState extends State<TambahBudget> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  String? _pilihan = "Pengeluaran";
  final List<String> _tipe = ['Pengeluaran', 'Pemasukan'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      drawer: const NavbarApp(),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Contoh: Membeli Baju",
                    labelText: "Judul",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
                onChanged: (String? value) {
                  setState(() {
                    _judul = value!;
                  });
                },
                onSaved: (String? value) {
                  setState(() {
                    _judul = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Judul tidak boleh kosong!';
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.all(10)),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Contoh: 50000",
                    labelText: "Nominal",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
                onChanged: (String? value) {
                  setState(() {
                    _nominal = int.parse(value!);
                  });
                },
                onSaved: (String? value) {
                  setState(() {
                    _nominal = int.parse(value!);
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Nominal tidak boleh kosong!';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Nominal harus berupa angka!';
                  } else {
                    _nominal = int.parse(value);
                    return null;
                  }
                },
              ),
              const Padding(padding: EdgeInsets.all(15)),
              SizedBox(
                width: 150,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              width: 3, color: Colors.blueAccent))),
                  value: _pilihan,
                  onChanged: (String? newValue) {
                    setState(() {
                      _pilihan = newValue!;
                    });
                  },
                  items: _tipe
                      .map((tipe) => DropdownMenuItem<String>(
                            value: tipe,
                            child: Text(tipe,
                                style: const TextStyle(fontSize: 15)),
                          ))
                      .toList(),
                ),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              SizedBox(
                width: 150,
                height: 50,
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Budget.addBudget(Budget(
                            judul: _judul, budget: _nominal, jenis: _pilihan!));
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 15,
                                child: ListView(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  shrinkWrap: true,
                                  children: <Widget>[
                                    const Center(child: Text('Informasi')),
                                    const SizedBox(height: 20),
                                    const Center(
                                      child: Text('Data Berhasil Disimpan'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.blue),
                                      ),
                                      child: const Text(
                                        'Kembali',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      }
                    },
                    child: const Text("Simpan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

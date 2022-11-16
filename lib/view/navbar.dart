import 'package:counter_7/view/data_budget.dart';
import 'package:counter_7/view/tambah_budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';

class NavbarApp extends StatelessWidget {
  const NavbarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
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
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const MyHomePage(title: 'Program Counter')));
    } else if (index == 1) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const TambahBudget()));
    } else if (index == 2) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const DataBudget()));
    }
  }
}

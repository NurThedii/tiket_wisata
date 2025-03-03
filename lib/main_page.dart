import 'package:flutter/material.dart';
import 'nav_item.dart';
import 'dummy_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tiket Wisata")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavItem(
              title: "Tiket Masuk",
              icon: Icons.confirmation_number,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DummyPage(title: "Tiket Masuk")),
              ),
            ),
            NavItem(
              title: "Jadwal Wisata",
              icon: Icons.calendar_today,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DummyPage(title: "Jadwal Wisata")),
              ),
            ),
            NavItem(
              title: "Peta Lokasi",
              icon: Icons.map,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DummyPage(title: "Peta Lokasi")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

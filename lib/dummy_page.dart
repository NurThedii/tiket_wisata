import 'package:flutter/material.dart';
class DummyPage extends StatelessWidget {
  final String title;

  const DummyPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text("Ini adalah halaman $title", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'main_page.dart';
import 'navigator_extension.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.navigateTo(MainPage(), replace: true);
          },
          child: Text("Login"),
        ),
      ),
    );
  }
}

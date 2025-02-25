import 'package:flutter/material.dart';
import 'login_page.dart';
import 'navigator_extension.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      context.navigateTo(LoginPage(), replace: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Splash Screen", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

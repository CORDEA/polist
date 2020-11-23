import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static Route route() => MaterialPageRoute(builder: (_) => HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(),
    );
  }
}

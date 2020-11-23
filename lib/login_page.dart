import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: const Text('Log in'),
        ),
      ),
    );
  }
}

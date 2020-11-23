import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:polist/login_page.dart';

void main() {
  runApp(App(authenticationRepository: AuthenticationRepository()));
}

class App extends StatelessWidget {
  App({Key key, @required authenticationRepository})
      : assert(authenticationRepository != null),
        _authenticationRepository = authenticationRepository,
        super(key: key);

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LogInPage(),
    );
  }
}

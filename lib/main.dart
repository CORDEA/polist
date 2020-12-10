import 'package:asset_repository/asset_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polist/asset/asset_bloc.dart';
import 'package:polist/login/login_bloc.dart';
import 'package:polist/login_page.dart';
import 'package:poly_api/poly_api.dart';

void main() {
  final PolyApiClient client = PolyApiClient();
  runApp(App(
    authenticationRepository: AuthenticationRepository(client: client),
    assetRepository: AssetRepository(client: client),
  ));
}

class App extends StatelessWidget {
  App({Key key, @required authenticationRepository, @required assetRepository})
      : assert(authenticationRepository != null),
        assert(assetRepository != null),
        _authenticationRepository = authenticationRepository,
        _assetRepository = assetRepository,
        super(key: key);

  final AuthenticationRepository _authenticationRepository;
  final AssetRepository _assetRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: BlocProvider(
        create: (_) => AssetBloc(_assetRepository),
        child: _AppView(),
      ),
    );
  }
}

class _AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue[400],
        accentColor: Colors.deepPurple[900],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.deepPurple[900],
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
        ),
      ),
      home: BlocProvider(
        create: (context) => LoginBloc(RepositoryProvider.of(context)),
        child: LogInPage(),
      ),
    );
  }
}

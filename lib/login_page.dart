import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polist/asset/asset_bloc.dart';
import 'package:polist/asset/asset_event.dart';
import 'package:polist/home_page.dart';
import 'package:polist/login/login_bloc.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.of(context)
              .pushAndRemoveUntil(HomePage.route(), (route) => false);
          context.read<AssetBloc>().add(LoadAssets());
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Log in'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              context.read<LoginBloc>().add(LoginClicked());
            },
            child: const Text('Log in'),
          ),
        ),
      ),
    );
  }
}

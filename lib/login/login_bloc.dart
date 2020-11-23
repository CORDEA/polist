import 'package:authentication_repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._repository) : super(null);

  final AuthenticationRepository _repository;

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    switch (event.runtimeType) {
      case LoginClicked:
        yield* _mapLoginClickedToState(state);
    }
  }

  Stream<LoginState> _mapLoginClickedToState(LoginState state) async* {
    // TODO
  }
}

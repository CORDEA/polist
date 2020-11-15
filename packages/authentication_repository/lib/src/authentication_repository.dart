import 'package:poly_api/poly_api.dart';

class AuthenticationRepository {
  AuthenticationRepository(this._client);

  final PolyApiClient _client;

  Future<void> logIn() {
    return _client.logIn(false);
  }
}

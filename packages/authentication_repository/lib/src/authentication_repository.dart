import 'package:poly_api/poly_api.dart';

class AuthenticationRepository {
  AuthenticationRepository({PolyApiClient client}) :
      _client = client ?? PolyApiClient();

  final PolyApiClient _client;

  Future<void> logIn() {
    return _client.logIn();
  }
}

import 'package:poly_api/poly_api.dart';

class AuthenticationRepository {
  AuthenticationRepository({PolyApiClient client}) :
      _client = client ?? PolyApiClient();

  final PolyApiClient _client;

  Future<bool> tryLogIn() {
    return _client.tryLogIn();
  }
}

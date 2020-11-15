import 'package:googleapis/poly/v1.dart';
import 'package:googleapis_auth/auth_browser.dart';

const _scopes = [""];

class PolyApiClient {
  PolyApiClient(String id, String clientSecret)
      : _clientId = ClientId(id, clientSecret);

  final _clientId;
  PolyApi _api;

  Future<void> logIn(bool immediate) {
    return createImplicitBrowserFlow(_clientId, _scopes)
        .then((value) => value.clientViaUserConsent(immediate: immediate))
        .then((value) => _api = PolyApi(value));
  }

  Future<ListAssetsResponse> getAssets() {
    return _api.assets.list();
  }
}

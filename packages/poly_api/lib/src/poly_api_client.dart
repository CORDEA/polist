import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/poly/v1.dart';

const _scopes = ["https://www.googleapis.com/auth/vrassetdata.readonly"];

class PolyApiClient {
  GoogleSignIn _googleSignIn = GoogleSignIn.standard(scopes: _scopes);

  PolyApi _api;

  Future<bool> tryLogIn() async {
    GoogleSignInAccount account;
    try {
      account = await _googleSignIn.signIn();
    } catch (_) {
      return false;
    }
    if (account == null) {
      return false;
    }
    final client = await _googleSignIn.authenticatedClient();
    _api = PolyApi(client);
    return true;
  }

  Future<ListAssetsResponse> getAssets() {
    return _api.assets.list();
  }
}

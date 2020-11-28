import 'package:poly_api/poly_api.dart';

import 'models/models.dart';

class AssetRepository {
  AssetRepository({PolyApiClient client}) : _client = client ?? PolyApiClient();

  final PolyApiClient _client;

  Future<List<Asset>> getAssets() {
    return _client.getAssets().then((value) => value.assets
        .map((a) => Asset(a.authorName, a.createTime, a.description,
            a.displayName, a.license))
        .toList());
  }
}

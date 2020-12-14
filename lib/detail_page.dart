import 'package:asset_repository/asset_repository.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  static Route route(Asset asset) =>
      MaterialPageRoute(builder: (_) => DetailPage(asset: asset));

  DetailPage({Key key, @required Asset asset})
      : assert(asset != null),
        _asset = asset,
        super(key: key);

  final Asset _asset;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(_asset.displayName),
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 1000,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

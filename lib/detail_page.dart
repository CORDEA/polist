import 'package:asset_repository/asset_repository.dart';
import 'package:flutter/material.dart';
import 'package:polist/detail_item.dart';

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
            expandedHeight: 250,
            flexibleSpace: Image.network(_asset.thumbnailUrl, fit: BoxFit.cover),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(_asset.description),
                ),
                Divider(),
                DetailItem(icon: Icons.person, title: _asset.authorName),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Divider(),
                ),
                DetailItem(icon: Icons.history, title: _asset.createTime),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Divider(),
                ),
                DetailItem(icon: Icons.public, title: _asset.license),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

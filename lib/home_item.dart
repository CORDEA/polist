import 'package:asset_repository/asset_repository.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  HomeItem({Key key, @required Asset asset})
      : assert(asset != null),
        _asset = asset,
        super(key: key);

  final Asset _asset;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(_asset.displayName),
            subtitle: Text(_asset.description ?? ""),
          ),
        ],
      ),
    );
  }
}

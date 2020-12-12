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
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                _asset.thumbnailUrl,
                fit: BoxFit.fitHeight,
                width: 56,
                height: 56,
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text(_asset.displayName),
                subtitle: Text(_asset.description ?? ""),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

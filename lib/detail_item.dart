import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  DetailItem({Key key, @required IconData icon, @required String title})
      : assert(icon != null),
        assert(title != null),
        _icon = icon,
        _title = title,
        super(key: key);

  final IconData _icon;
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 36),
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          Icon(_icon, color: Colors.black54),
          SizedBox(width: 8),
          Text(_title),
        ],
      ),
    );
  }
}

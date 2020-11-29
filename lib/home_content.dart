import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polist/asset/asset_bloc.dart';
import 'package:polist/asset/asset_state.dart';
import 'package:polist/home_item.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AssetBloc, AssetState>(
      builder: (context, state) {
        if (state is AssetsLoadSuccess) {
          return ListView.builder(
            itemCount: state.assets.length,
            itemBuilder: (context, index) {
              return HomeItem(asset: state.assets[index]);
            },
          );
        }
        return Center();
      },
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polist/asset/asset_event.dart';
import 'package:polist/asset/asset_state.dart';
import 'package:asset_repository/asset_repository.dart';

class AssetBloc extends Bloc<AssetEvent, AssetState> {
  AssetBloc(this._repository) : super(AssetsLoading());

  final AssetRepository _repository;

  @override
  Stream<AssetState> mapEventToState(AssetEvent event) async* {
    switch (event.runtimeType) {
      case LoadAssets:
        yield* _mapLoadAssetsToState();
    }
  }

  Stream<AssetState> _mapLoadAssetsToState() async* {
    List<Asset> assets = await _repository.getAssets();
    yield AssetsLoadSuccess(assets);
  }
}

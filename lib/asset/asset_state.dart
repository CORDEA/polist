import 'package:equatable/equatable.dart';
import 'package:asset_repository/asset_repository.dart';

abstract class AssetState extends Equatable {
  const AssetState();

  @override
  List<Object> get props => [];
}

class AssetsLoading extends AssetState {}

class AssetsLoadSuccess extends AssetState {
  const AssetsLoadSuccess(this.assets);

  final List<Asset> assets;

  @override
  List<Object> get props => [assets];
}

class AssetsLoadFailure extends AssetState {}

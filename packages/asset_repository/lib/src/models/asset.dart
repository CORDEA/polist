import 'package:equatable/equatable.dart';

class Asset extends Equatable {
  final String authorName;
  final String createTime;
  final String description;
  final String displayName;
  final String license;
  final String thumbnailUrl;

  Asset(this.authorName, this.createTime, this.description, this.displayName,
      this.license, this.thumbnailUrl);

  @override
  List<Object> get props =>
      [authorName, createTime, description, displayName, license, thumbnailUrl];
}

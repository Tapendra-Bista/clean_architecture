import 'package:cln_arch_demo/features/home/domain/entities/photos_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/adapters.dart';
part 'photos_model.freezed.dart';
part 'photos_model.g.dart';

@HiveType(typeId: 0)
@freezed
abstract class PhotosModel with _$PhotosModel implements PhotosEntity {
  const factory PhotosModel({
    @HiveField(0) required int albumId,
    @HiveField(1) required int id,
    @HiveField(2) required String title,
    @HiveField(3) required String url,
    @HiveField(4) required String thumbnailUrl,
  }) = _PhotosModel;

  factory PhotosModel.fromJson(Map<String, dynamic> json) =>
      _$PhotosModelFromJson(json);
}


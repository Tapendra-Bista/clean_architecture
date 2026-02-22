// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PhotosModelAdapter extends TypeAdapter<PhotosModel> {
  @override
  final typeId = 0;

  @override
  PhotosModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PhotosModel(
      albumId: (fields[0] as num).toInt(),
      id: (fields[1] as num).toInt(),
      title: fields[2] as String,
      url: fields[3] as String,
      thumbnailUrl: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PhotosModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.albumId)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.url)
      ..writeByte(4)
      ..write(obj.thumbnailUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhotosModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PhotosModel _$PhotosModelFromJson(Map<String, dynamic> json) => _PhotosModel(
  albumId: (json['albumId'] as num).toInt(),
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  url: json['url'] as String,
  thumbnailUrl: json['thumbnailUrl'] as String,
);

Map<String, dynamic> _$PhotosModelToJson(_PhotosModel instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };

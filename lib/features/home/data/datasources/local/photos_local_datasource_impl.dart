import 'package:hive_ce_flutter/adapters.dart';

import '../../models/photos_model.dart';
import 'photos_local_datasource.dart';

class PhotosLocalDataSourceImpl implements PhotosLocalDataSource {
  final Box<PhotosModel> _box ;

  PhotosLocalDataSourceImpl(this._box);

  @override
  List<PhotosModel> getCachedPhotos({required int start, required int limit}) {
    final all = _box.values.toList()..sort((a, b) => a.id.compareTo(b.id));

    if (start >= all.length) {
      return [];
    }

    final end = (start + limit).clamp(0, all.length);
    return all.sublist(start, end);
  }

  @override
  Future<void> cachePhotos(List<PhotosModel> photos) async {
    final Map<int, PhotosModel> photoMap = {
      for (var photo in photos) photo.id: photo,
    };
    await   _box.putAll(photoMap);
  }
}

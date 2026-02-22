import '../../models/photos_model.dart';

abstract class PhotosLocalDataSource {
  List<PhotosModel> getCachedPhotos({
    required int start,
    required int limit,
  });

  Future<void> cachePhotos(List<PhotosModel> photos);
}
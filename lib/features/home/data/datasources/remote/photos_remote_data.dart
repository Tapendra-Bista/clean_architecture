import '../../models/photos_model.dart';


abstract class PhotosRemoteDataSource {
  Future<List<PhotosModel>> getPhotos({required int start, required int limit});
}
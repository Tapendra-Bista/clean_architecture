import 'package:cln_arch_demo/features/home/data/datasources/remote/photos_remote_data.dart';
import 'package:cln_arch_demo/features/home/data/models/photos_model.dart';
import 'photos_api_service.dart';

class PhotosRemoteDataSourceImpl implements PhotosRemoteDataSource {
  final PhotosApiService _apiService;

  PhotosRemoteDataSourceImpl(this._apiService);

  @override
  Future<List<PhotosModel>> getPhotos({required int start, required int limit}) {
    return _apiService.getPhotos(start: start, limit: limit);
  }
}
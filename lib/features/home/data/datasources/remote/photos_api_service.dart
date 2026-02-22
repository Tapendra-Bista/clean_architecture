import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../models/photos_model.dart';

part 'photos_api_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class PhotosApiService {
  factory PhotosApiService(Dio dio, {String baseUrl}) = _PhotosApiService;

  @GET('/photos')
  Future<List<PhotosModel>> getPhotos({
    @Query('_start') required int start,
    @Query('_limit') required int limit,
  });
}

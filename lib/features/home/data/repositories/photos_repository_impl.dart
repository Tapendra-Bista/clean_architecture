import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/failure/failure.dart';
import '../../domain/entities/photos_entity.dart';
import '../../domain/repositories/photos_repository.dart';
import '../datasources/local/photos_local_datasource.dart';
import '../datasources/remote/photos_remote_data.dart';

class PhotosRepositoryImpl implements PhotosRepository {
  final PhotosRemoteDataSource _remoteDataSource;
    final PhotosLocalDataSource _dataSource;

  PhotosRepositoryImpl(this._remoteDataSource, this._dataSource);

  @override
  TaskEither<Failure, List<PhotosEntity>> getPhotos({
    required int start,
    required int limit,
  }) {
    return TaskEither.tryCatch(
      () async {  
         // 1️⃣ Try cache first
    final cached = _dataSource.getCachedPhotos(
      start: start,
      limit: limit,
    );

    if (cached.isNotEmpty) {
      return cached;
    }

    // 2️⃣ Fetch remote
    final remotePhotos = await _remoteDataSource.getPhotos(
      start: start,
      limit: limit,
    );

    // 3️⃣ Cache result
    await _dataSource.cachePhotos(remotePhotos);

    return remotePhotos;
      },
      (error, _) {
        if (error is DioException) {
          return NetworkFailure(error.message ?? 'Network error');
        }
        return UnknownFailure();
      },
    );
    // Models implement Entity
  }
}

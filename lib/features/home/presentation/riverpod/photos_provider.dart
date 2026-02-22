
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import '../../data/datasources/local/photos_local_datasource_impl.dart';
import '../../data/datasources/remote/photos_api_service.dart';
import '../../data/datasources/remote/photos_remote_data_impl.dart';
import '../../data/models/photos_model.dart';
import '../../data/repositories/photos_repository_impl.dart';
import '../../domain/repositories/photos_repository.dart';
import '../../domain/usecases/get_photos_usecase.dart';
// dio
final dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  ),
);
// hive 
final hiveBoxProvider = Provider<Box<PhotosModel>>((ref) {
  return Hive.box<PhotosModel>('photosBox');
});

// API Service
final photosApiServiceProvider = Provider(
  (ref) => PhotosApiService(ref.read(dioProvider)),
);

// Remote DataSource
final remoteDataSourceProvider = Provider(
  (ref) => PhotosRemoteDataSourceImpl(ref.read(photosApiServiceProvider)),
);

// Local DataSource
final localDataSourceProvider = Provider(
  (ref) => PhotosLocalDataSourceImpl(ref.read(hiveBoxProvider)),
);
// Repository
final photosRepositoryProvider = Provider<PhotosRepository>(
  (ref) => PhotosRepositoryImpl(ref.read(remoteDataSourceProvider), ref.read(localDataSourceProvider)),
);

// UseCase
final getPhotosUseCaseProvider = Provider(
  (ref) => GetPhotosUseCase(ref.read(photosRepositoryProvider)),
);

import 'package:fpdart/fpdart.dart';

import '../../../../core/failure/failure.dart';
import '../entities/photos_entity.dart';
import '../repositories/photos_repository.dart';

class GetPhotosUseCase {
  final PhotosRepository _repository;

  GetPhotosUseCase(this._repository);

  TaskEither<Failure, List<PhotosEntity>> call({required int start, required int limit}) {
    return _repository.getPhotos(start: start, limit: limit);
  }
}
import 'package:fpdart/fpdart.dart';

import '../../../../core/failure/failure.dart';
import '../entities/photos_entity.dart';

abstract class PhotosRepository {
  TaskEither<Failure, List<PhotosEntity>> getPhotos({
    required int start,
    required int limit,
  });
}

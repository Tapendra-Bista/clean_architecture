import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../../../core/failure/failure.dart';
import '../../domain/entities/photos_entity.dart';
import '../../domain/usecases/get_photos_usecase.dart';
import 'photos_provider.dart';

final photosNotifierProvider =
    StateNotifierProvider<PhotosNotifier, AsyncValue<List<PhotosEntity>>>(
      (ref) => PhotosNotifier(ref.read(getPhotosUseCaseProvider)),
    );

class PhotosNotifier extends StateNotifier<AsyncValue<List<PhotosEntity>>> {
  final GetPhotosUseCase _getPhotosUseCase;

  int _page = 0;
  final int _limit = 20;
  bool _hasMore = true;
  final List<PhotosEntity> _photos = [];

  PhotosNotifier(this._getPhotosUseCase) : super(const AsyncValue.loading()) {
    fetchPhotos();
  }

  Future<void> fetchPhotos() async {
    if (!_hasMore) return;

    final task = _getPhotosUseCase(start: _page * _limit, limit: _limit);

    final result = await task.run();

    result.fold(
      (Failure failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (List<PhotosEntity> newPhotos) {
        _photos.addAll(newPhotos);
        _hasMore = newPhotos.length == _limit;
        _page++;

        state = AsyncValue.data(List.unmodifiable(_photos));
      },
    );
  }

  Future<void> refresh() async {
    _page = 0;
    _hasMore = true;
    _photos.clear();
    state = const AsyncValue.loading();
    await fetchPhotos();
  }
}

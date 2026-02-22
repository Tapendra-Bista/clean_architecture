import 'package:cln_arch_demo/features/home/presentation/riverpod/photos_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhotosPage extends ConsumerStatefulWidget {
  const PhotosPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PhotosPageState();
}

class _PhotosPageState extends ConsumerState<PhotosPage> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent - 200) {
        ref.read(photosNotifierProvider.notifier).fetchPhotos();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final photosAsync = ref.watch(photosNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Photos')),
      body: photosAsync.when(
        data: (photos) => ListView.builder(
          physics: BouncingScrollPhysics(),
          controller: scrollController,

          itemCount: photos.length,
          itemBuilder: (context, index) {
            final photo = photos[index];
            return ListTile(
              leading: Text(photo.id.toString()),
              title: Text(photo.title),
              subtitle: Text(photo.url),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, st) => Center(child: Text('Error: $err')),
      ),
    );
  }
}

import 'package:cln_arch_demo/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

import 'features/home/data/models/photos_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
    final path = (await getApplicationDocumentsDirectory()).path;
  // Initialize Hive and register adapters
  await Hive.initFlutter(path);

  Hive.registerAdapter(PhotosModelAdapter());
  
  await Hive.openBox<PhotosModel>('photosBox');
  runApp(ProviderScope(child: const MyApp()));
}


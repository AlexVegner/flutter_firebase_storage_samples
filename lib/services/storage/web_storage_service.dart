// ignore: avoid_web_libraries_in_flutter
import 'dart:html' show File;

import 'package:conditional_compilation/services/storage/storage_service.dart';
import 'package:firebase/firebase.dart';

class StorageServiceImpl implements StorageService {
  Future<Uri> loadFile(String fileParh) {
    return storage().ref(fileParh).getDownloadURL();
  }

  // file mast be File from dart:html
  @override
  Future<void> uploadFile(String filePath, dynamic file) async {
    assert(file is File);
    final uploadTask = storage().ref(filePath).put(file);
    final snapshot = await uploadTask.future;
    if (snapshot.state == TaskState.SUCCESS) {
      return;
    } else {
      throw 'File upload failed';
    }
  }
}

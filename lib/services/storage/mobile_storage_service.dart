import 'dart:io';

import 'package:conditional_compilation/services/storage/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StorageServiceImpl implements StorageService {
  @override
  Future<Uri> loadFile(String filePath) {
    return FirebaseStorage.instance.ref().child(filePath).getDownloadURL();
  }

  // file mast be File from dart:io
  @override
  Future<void> uploadFile(String filePath, dynamic file) async {
    assert(file is File);
    final uploadTask =
        FirebaseStorage.instance.ref().child(filePath).putFile(file);
    await uploadTask.onComplete;
    if (uploadTask.isSuccessful) {
      return;
    } else {
      throw 'File upload failed';
    }
  }
}

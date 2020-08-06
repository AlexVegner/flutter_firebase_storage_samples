import 'package:conditional_compilation/services/storage/storage_service.dart';

class StorageServiceImpl implements StorageService {
  @override
  Future<Uri> loadFile(String filePath) {
    throw UnsupportedError("Platform not found");
  }

  @override
  Future<void> uploadFile(String filePath, dynamic file) {
    throw UnsupportedError("Platform not found");
  }
}

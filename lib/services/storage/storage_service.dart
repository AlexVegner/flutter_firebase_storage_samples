abstract class StorageService {
  Future<Uri> loadFile(String filePath);
  Future<void> uploadFile(String filePath, dynamic file);
}

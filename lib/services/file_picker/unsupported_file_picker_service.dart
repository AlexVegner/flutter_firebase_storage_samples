import 'package:conditional_compilation/utils/io.dart';

import 'file_picker_service.dart';

class FilePickerServiceImpl implements FilePickerService {
  Future<File> getFile() {
    throw UnsupportedError("Platform not found");
  }
}

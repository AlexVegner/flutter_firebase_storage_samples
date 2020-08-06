import 'dart:io';

import 'package:file_picker/file_picker.dart';

import 'file_picker_service.dart';

class FilePickerServiceImpl implements FilePickerService {
  Future<File> getFile() async {
    return FilePicker.getFile();
  }
}

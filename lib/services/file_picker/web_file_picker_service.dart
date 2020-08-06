// ignore: avoid_web_libraries_in_flutter
import 'dart:html' show File;

import 'package:file_picker_web/file_picker_web.dart';

import 'file_picker_service.dart';

class FilePickerServiceImpl implements FilePickerService {
  Future<File> getFile() {
    return FilePicker.getFile();
  }
}

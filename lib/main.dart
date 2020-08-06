import 'package:conditional_compilation/services/file_picker/file_picker_service.dart';
import 'package:flutter/material.dart';
import 'services/file_picker/file_picker.dart';
import 'services/storage/storage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final FilePickerService filePickerService;

  MyHomePage({Key key, this.title, this.filePickerService}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FilePickerService filePickerService = FilePickerServiceImpl();
  final StorageService storageService = StorageServiceImpl();

  Future<void> _selectAndUploadFile() async {
    final file = await filePickerService.getFile();
    await storageService.uploadFile('chats/test_file', file);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _selectAndUploadFile,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

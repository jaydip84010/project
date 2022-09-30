import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePickDemo extends StatefulWidget {
  const FilePickDemo({Key? key}) : super(key: key);

  @override
  State<FilePickDemo> createState() => _FilePickDemoState();
}

class _FilePickDemoState extends State<FilePickDemo> {
  FilePickerResult? result;
  PlatformFile? file;

  Future pickfile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
     setState(() {
       file = result.files.first;
     });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 200,
                width: 200,
                child: file!=null?Image.file(
                  File(
                    file!.path.toString(),
                  ),
                  height: 100,
                  width: 100,
                ):Container(
                )),
            ElevatedButton(
                onPressed: () async {
                  pickfile();
                },
                child: Center(child: Text('Files'))),
          ],
        ),
      )),
    );
  }
}

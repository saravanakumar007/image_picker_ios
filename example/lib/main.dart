import 'dart:async';
import 'package:flutter/material.dart';
import 'package:img_picker_platform_interface/img_picker_platform_interface.dart';

void main() {
  // #enddocregion photo-picker-example
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Image Picker Demo',
      home: MyHomePage(title: 'Image Picker Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, this.title});

  final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> uploadPhotos() async {
    final List<XFile> photoList = await ImagePickerPlatform.instance
        .getMultiImageWithOptions(options: MultiImagePickerOptions(limit: 2));
    var s = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            uploadPhotos();
          },
          child: Text('Upload Photo'),
        ),
      ),
    );
  }
}

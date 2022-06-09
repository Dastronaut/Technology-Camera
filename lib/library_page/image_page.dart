import 'package:flutter/material.dart';
import 'package:s_camera/library_page/firebase_file.dart';

import 'firebase_api.dart';

class ImagePage extends StatelessWidget {
  final FirebaseFile file;
  const ImagePage({
    Key? key,
    required this.file
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(file.name),
        centerTitle: true,
      ),
      body: Image.network(
        file.url,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}



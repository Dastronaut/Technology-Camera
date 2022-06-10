import 'package:flutter/material.dart';
import 'package:s_camera/library_page/firebase_api.dart';
import 'package:s_camera/library_page/firebase_file.dart';

import 'package:s_camera/library_page/image_page.dart';
class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  late Future<List<FirebaseFile>> futureFiles;
  @override
  void initState(){
    super.initState();
    futureFiles = FirebaseApi.listAll("StorageData/");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<FirebaseFile>>(
          future: futureFiles,
          builder: (context, snapshot) {
            switch(snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError){
                  return Center(child: Text("Some error ocuccred"));
                }else {
                  final files = snapshot.data!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 12,),
                      Expanded(
                        child: ListView.builder(
                          itemCount: files.length,
                          itemBuilder: (context, index){
                            final file = files[index];
                            return buildFile(context, file);
                          },
                        ),
                      ),
                      const SizedBox(height: 12,),
                      buildHeader(files.length),
                    ],
                  );
                }
            }
          },
      )
    );
  }
  Widget buildFile(BuildContext context, FirebaseFile file) => ListTile(
    contentPadding: EdgeInsets.all(2.0),
    leading: Image.network(
      file.url,
      width: 100,
      height: 100,
      fit: BoxFit.cover,
    ),

    title: Text(
      file.name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        color: Colors.blue,
      ),
    ),

    onTap: () => Navigator.of(context).push(MaterialPageRoute(
      builder: (context) =>   ImagePage(file: file),
    )),
  );

  Widget buildHeader(int length) => ListTile(

    tileColor: Colors.white,

    leading: Container(
      width: 52,
      height: 52,
      child: Icon(
        Icons.file_copy,
        color: Colors.black54,
      ),
    ),
    title: Center(
      child: Text(
        "$length Images",
        style: TextStyle(
          // fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.black54,

        ),
      ),
    ),
  );


}

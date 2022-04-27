import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Trực tiếp", style: TextStyle(fontSize: 25,color: Colors.white)),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Icon(Icons.splitscreen_outlined),
          )
        ],
        backgroundColor: Colors.lightBlue,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: "Chụp màn hình",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.volume_up_outlined),
            label: "Âm lượng",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stop),
            label: "Tạm dừng",
            backgroundColor: Colors.white,
          ),



        ],
      ),
    );
  }
}

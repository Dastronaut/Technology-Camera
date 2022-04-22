import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:s_camera/pages/camera_page.dart';
import 'package:s_camera/widgets/my_drawer.dart';

import 'device_page.dart';
import 'library_page.dart';

=======
import 'package:s_camera/widgets/my_drawer.dart';

>>>>>>> 76e183aca79740ca9f8e173e1228fc7dbcbc59c0
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
<<<<<<< HEAD
  int _selectedIndex = 0;
  final _wighetOptions = [
    const DevicePage(),
    const LibraryPage(),
  ];
  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
=======
>>>>>>> 76e183aca79740ca9f8e173e1228fc7dbcbc59c0
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        elevation: 10,
        title: const Text('TechCAM', style: TextStyle(fontSize: 25)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: OnClickCamera,
=======
        title: const Text('TechCAM'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
>>>>>>> 76e183aca79740ca9f8e173e1228fc7dbcbc59c0
            icon: const Icon(Icons.splitscreen_outlined),
          ),
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () {},
          ),
        ],
<<<<<<< HEAD
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),

      drawer: const MyDrawer(),

      body: _wighetOptions[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            label: "Thiết bị",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv_outlined),
            label: "Thư viện",
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
  void OnClickCamera(){
    Navigator.push(context, MaterialPageRoute(builder: gotoCamera));
  }
  Widget gotoCamera(BuildContext context){
    return const CameraPage();
  }
=======
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text(''),
      ),
    );
  }
>>>>>>> 76e183aca79740ca9f8e173e1228fc7dbcbc59c0
}

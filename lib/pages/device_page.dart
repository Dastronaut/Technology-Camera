import 'package:flutter/material.dart';
class DevicePage extends StatefulWidget {
  const DevicePage({Key? key}) : super(key: key);

  @override
  State<DevicePage> createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Row(
                children: <Widget>[
                  const Text(
                    "Camera",
                    style: TextStyle(color: Colors.black,fontSize: 40),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(121, 0, 0, 0),
                    child: Text(
                      "Phát",
                      style: TextStyle(color: Colors.black54,fontSize: 20,decoration: TextDecoration.underline),
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.play_circle_outline,
                      //color: Colors.blue,
                    ),
                    iconSize: 30,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


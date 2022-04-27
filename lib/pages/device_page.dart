import 'package:flutter/material.dart';

class DevicePage extends StatefulWidget {
  const DevicePage({Key? key}) : super(key: key);

  @override
  State<DevicePage> createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        "Device",
        style: TextStyle(fontSize: 30,color: Colors.black),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:ble_app/services/ble.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  BLE ble = BLE();

  @override
  void initState() {
    super.initState();
    ble.printBLE();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}


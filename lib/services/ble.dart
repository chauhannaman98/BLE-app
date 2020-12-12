import 'package:flutter_blue/flutter_blue.dart';

class BLE {

  void printBLE() {
    FlutterBlue flutterBlue = FlutterBlue.instance;
    // Start scanning
    flutterBlue.startScan(timeout: Duration(seconds: 4));

    // Listen to scan results
    flutterBlue.scanResults.listen((results) {
      for (ScanResult r in results) {
        print('${r.device.name} found | RSSI: ${r.rssi}');
      }
    });

    // Stop scanning
    flutterBlue.stopScan();
  }
}
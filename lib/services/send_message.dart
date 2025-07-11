import 'dart:convert';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

void sendMessageOverBluetooth(String message) async {
  List<BluetoothDevice> connectedDevices = await FlutterBluePlus.connectedDevices;

  for (BluetoothDevice device in connectedDevices) {
    List<BluetoothService> services = await device.discoverServices();

    for (BluetoothService service in services) {
      for (BluetoothCharacteristic characteristic in service.characteristics) {
        if (characteristic.properties.write) {
          try {
            await characteristic.write(utf8.encode(message), withoutResponse: false);
            print('✅ Message sent to ${device.name}');
          } catch (e) {
            print('❌ Failed to send to ${device.name}: $e');
          }
        }
      }
    }
  }
}

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QR_Scanner extends StatefulWidget {
  const QR_Scanner({super.key});

  @override
  State<QR_Scanner> createState() => _QR_ScannerState();
}

class _QR_ScannerState extends State<QR_Scanner> {
  final GlobalKey qrkey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String scancode = '';

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: SizedBox(
              height: 200,
              width: 200,
              child: Expanded(
                child: QRView(
                  key: qrkey,
                  onQRViewCreated: _onQRViewCreated,
                ),
              ),
            ),
          ),
          Text(
            'Scanned Code : $scancode',
            style: const TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 101, 24, 255)),
          )
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scandata) {
      setState(() {
        scancode = scandata.code!;
      });
    });
  }
}

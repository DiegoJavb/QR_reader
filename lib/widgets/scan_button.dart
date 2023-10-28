import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';
import 'package:qr_reader/utils/utils.dart';

class ScanButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      child: const Icon(Icons.filter_center_focus),
      onPressed: () async {
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#3D8BEF',
          'Cancel',
          false,
          ScanMode.QR,
        );

        // const barcodeScanRes = 'https://www.google.com/';
        // const barcodeScanRes = 'geo:0.266192, -78.557388';
        if (barcodeScanRes == '-1') return;

        final scanListProvider = Provider.of<ScanLisProvider>(
          context,
          listen: false,
        );
        final nuevoScan = await scanListProvider.nuevoScan(barcodeScanRes);
        urlLauncher(context, nuevoScan);
      },
    );
  }
}

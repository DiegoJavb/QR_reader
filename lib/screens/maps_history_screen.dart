import 'package:flutter/material.dart';
import 'package:qr_reader/widgets/scan_tiles.dart';

class MapsHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ScanTiles(tipe: 'geo');
  }
}

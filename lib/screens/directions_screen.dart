import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';
import 'package:qr_reader/widgets/scan_tiles.dart';

class DirectionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScanTiles(tipe: 'http');
    // final scanListProvider = Provider.of<ScanLisProvider>(context);
    // final scans = scanListProvider.scans;
    // return ListView.builder(
    //   itemCount: scans.length,
    //   itemBuilder: (_, i) => ListTile(
    //     leading: Icon(Icons.map, color: Theme.of(context).primaryColor),
    //     title: Text(scans[i].valor),
    //     subtitle: Text(scans[i].id.toString()),
    //     trailing: Icon(Icons.keyboard_arrow_right),
    //     onTap: () => print('Imprimir algo...'),
    //   ),
    // );
  }
}

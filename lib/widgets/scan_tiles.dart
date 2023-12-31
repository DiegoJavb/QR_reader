import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';
import 'package:qr_reader/utils/utils.dart';

class ScanTiles extends StatelessWidget {
  final String tipe;

  const ScanTiles({required this.tipe});
  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanLisProvider>(context);
    final scans = scanListProvider.scans;
    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: (_, i) => Dismissible(
        key: UniqueKey(),
        background: Container(color: Colors.red),
        onDismissed: (DismissDirection direction) {
          Provider.of<ScanLisProvider>(context, listen: false)
              .borrarScansPorId(scans[i].id!);
        },
        child: ListTile(
          leading: Icon(
            tipe == 'https' ? Icons.home_outlined : Icons.map_outlined,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(scans[i].valor),
          subtitle: Text(scans[i].id.toString()),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () => urlLauncher(context, scans[i]),
        ),
      ),
    );
  }
}

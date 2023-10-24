import 'package:flutter/material.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> urlLauncher(BuildContext context, ScanModel scan) async {
  final _url = Uri.parse(scan.valor);

  if (scan.tipo == 'http') {
    if (await canLaunchUrl(_url)) {
      launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  } else {
    Navigator.of(context).pushNamed('mapa', arguments: scan);
  }
}

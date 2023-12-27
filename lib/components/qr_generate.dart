import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRGenerate extends StatelessWidget {
  const QRGenerate({
    super.key,
    required this.name,
    required this.title,
    required this.id,
    required this.dateTime,
  });

  final String name;
  final String title;
  final int id;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return QrImageView(
      data: 'Name: $name\nTitle: $title\nID: $id\nLogin Time: $dateTime',
      version: QrVersions.auto,
      size: 200.0,
    );
  }
}

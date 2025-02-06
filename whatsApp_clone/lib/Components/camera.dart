import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var Size(:width,:height) =size;
    return Center(
        child: Icon(
          Icons.qr_code_scanner_sharp,
          size: MediaQuery.sizeOf(context).height * 0.4
        ),
    );
  }
}

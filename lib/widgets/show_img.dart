import 'package:flutter/material.dart';

class ShowImaege extends StatelessWidget {
  final String path;
  const ShowImaege({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(path);
  }
}

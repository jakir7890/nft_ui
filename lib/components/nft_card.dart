import 'package:flutter/material.dart';

class NftCard extends StatelessWidget {
  final String imagePath;
  const NftCard({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.all(15),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(imagePath, fit: BoxFit.cover,)),
    );
  }
}

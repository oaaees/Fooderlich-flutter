import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
    this.image,
    this.imageRadius = 20,
  });

  final double imageRadius;
  final ImageProvider? image;

  @override
  Widget build(BuildContext context){
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        backgroundImage: image,
        radius: imageRadius - 5,
      ),
    );
  }
}
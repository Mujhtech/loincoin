import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  UserProfileImage({
    @required this.imageUrl,
    this.size = 48.0,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2 - size / 18),
      child: Image(
        image: AssetImage(imageUrl),
        height: size,
        width: size,
        fit: BoxFit.cover,
      ),
    );
  }
}

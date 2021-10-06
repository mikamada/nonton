import 'package:flutter/material.dart';

// ignore: camel_case_types
class galleryCard extends StatelessWidget {
  final String imgUrl;
  const galleryCard({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            imgUrl,
          ),
        ),
        borderRadius: BorderRadius.circular(
          18,
        ),
      ),
    );
  }
}

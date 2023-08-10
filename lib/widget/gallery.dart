import 'package:flutter/material.dart';

class GallerySection extends StatelessWidget {
  final List<String> imageUrls = List.generate(15, (index) {
    return 'images/projects/Screenshot_${index + 1}.png';
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Gallery',
          style: TextStyle(
            color: Colors.white,
            fontSize: 44,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 20),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.spaceBetween,
          children: imageUrls.map((imageUrl) {
            return Container(
              width: 250,
              height: 220,
              decoration: BoxDecoration(
                color: Color(0xFF202020),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.contain,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

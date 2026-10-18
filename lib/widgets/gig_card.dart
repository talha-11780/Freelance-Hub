import 'package:flutter/material.dart';

class GigCard extends StatelessWidget {
  final String title, seller, image;
  final int price;
  final double rating;

  const GigCard({
    super.key,
    required this.title,
    required this.seller,
    required this.image,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(image, width: 80, height: 80, fit: BoxFit.cover),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Row(children: [
                    const Icon(Icons.person, size: 16),
                    const SizedBox(width: 4),
                    Text(seller),
                  ]),
                  const SizedBox(height: 4),
                  Row(children: [
                    const Icon(Icons.star, size: 16, color: Colors.amber),
                    Text(' $rating'),
                  ]),
                ],
              ),
            ),
            Text('\$$price',
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal)),
          ],
        ),
      ),
    );
  }
}
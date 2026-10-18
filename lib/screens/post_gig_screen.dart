import 'package:flutter/material.dart';

class PostGigScreen extends StatelessWidget {
  const PostGigScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post a Gig')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TextField(
                decoration: InputDecoration(
                    labelText: 'Gig Title',
                    prefixIcon: Icon(Icons.title),
                    border: OutlineInputBorder())),
            const SizedBox(height: 12),
            const TextField(
                decoration: InputDecoration(
                    labelText: 'Category',
                    prefixIcon: Icon(Icons.category),
                    border: OutlineInputBorder())),
            const SizedBox(height: 12),
            const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Price (\$)',
                    prefixIcon: Icon(Icons.attach_money),
                    border: OutlineInputBorder())),
            const SizedBox(height: 12),
            const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Delivery Days',
                    prefixIcon: Icon(Icons.timer),
                    border: OutlineInputBorder())),
            const SizedBox(height: 12),
            const TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    labelText: 'Description', border: OutlineInputBorder())),
                    const SizedBox(height: 12),
Container(
  height: 120,
  width: double.infinity,
  decoration: BoxDecoration(
    border: Border.all(color: Colors.teal),
    borderRadius: BorderRadius.circular(8),
  ),
  child: const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.add_photo_alternate, size: 40, color: Colors.teal),
      SizedBox(height: 6),
      Text('Add Cover Photo'),
    ],
  ),
),
const SizedBox(height: 12),
Row(
  children: [
    Expanded(
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.photo_library),
        label: const Text('Gallery'),
      ),
    ),
    const SizedBox(width: 12),
    Expanded(
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.videocam),
        label: const Text('Add Video'),
      ),
    ),
  ],
),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('Post Gig')),
            ),
          ],
        ),
      ),
    );
  }
}
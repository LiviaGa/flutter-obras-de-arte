import 'package:flutter/material.dart';


class ArtworkDetailScreen extends StatelessWidget {
  final Artwork artwork;

  const ArtworkDetailScreen({super.key, required this.artwork});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(artwork.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                artwork.imageUrl,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              artwork.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(artwork.description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

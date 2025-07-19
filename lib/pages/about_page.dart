import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Heritage Spaces'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'HERITAGE SPACES',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
            ),
            const SizedBox(height: 16),

            const Text(
              'We offer comprehensive interior design services for both residential and commercial spaces. We blend creativity, functionality, and elegance to transform interiors into living works of art.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),

            Row(
              children: const [
                Icon(Icons.home, color: Colors.brown, size: 28),
                SizedBox(width: 8),
                Text(
                  'Residential Interior Design',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _buildBullet('Space Planning & Layout Design'),
            _buildBullet('Living Room, Bedroom, Kitchen & Bathroom Design'),
            _buildBullet('Modular Kitchen & Wardrobe Solutions'),
            _buildBullet('Furniture Selection & Customization'),
            _buildBullet('Lighting Design'),
            _buildBullet('Color Consultation'),
            _buildBullet('Soft Furnishings & Décor Styling'),
            _buildBullet('Renovation & Remodeling'),

            const SizedBox(height: 32),

            Row(
              children: const [
                Icon(Icons.business, color: Colors.brown, size: 28),
                SizedBox(width: 8),
                Text(
                  'Commercial Interior Design',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _buildBullet('Office Space Planning & Design'),
            _buildBullet('Retail Store & Showroom Interiors'),
            _buildBullet('Hospitality Design (Hotels, Cafes, Restaurants)'),
            _buildBullet('Co-working Spaces'),
            _buildBullet('Reception & Lobby Design'),
            _buildBullet('Branding Integration in Interiors'),
            _buildBullet('Acoustic & Lighting Solutions'),
          ],
        ),
      ),
    );
  }

  Widget _buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Icon(Icons.circle, size: 8, color: Colors.brown),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

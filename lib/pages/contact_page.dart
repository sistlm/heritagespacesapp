import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  // Launch Email
  void _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'heritagespacesinteriors@gmail.com',
      query: 'subject=Enquiry from Heritage Spaces App',
    );

    if (!await launchUrl(emailUri)) {
      throw 'Could not launch $emailUri';
    }
  }

  // Launch Instagram
  void _launchInstagram() async {
    final Uri instagramUri = Uri.parse('https://www.instagram.com/heritage_spaces/');
    if (!await launchUrl(instagramUri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $instagramUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Get in touch with us!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            const Text('📞 Phone: +91-8897917553 , 9618419087'),
            const SizedBox(height: 10),

            GestureDetector(
              onTap: _launchEmail,
              child: const Text(
                '📧 Email: heritagespacesinteriors@gmail.com',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),

            const SizedBox(height: 10),

            GestureDetector(
              onTap: _launchInstagram,
              child: const Text(
                '📸 Instagram: @heritage_spaces',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:les_relais/pages/contact.dart';

class HowToDonatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment donner ?'),
        backgroundColor: Color(0xFFE2016B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Comment donner ?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Adoptez les bons réflexes !',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vous pouvez déposer dans les conteneurs du Relais de petits sacs, remplis de vêtements et linge de maison, chaussures, petite maroquinerie (sacs à main, ceintures).',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Afin de préserver la qualité de vos dons et leur assurer une seconde vie, nous vous remercions de respecter quelques consignes :',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    // ... (Other instructions)
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Pas de recyclage matière possible pour les K-way, les cirés, les chaussures, la petite maroquinerie et les jouets. Ils doivent être en bon état ou facilement réparables.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Si vous le souhaitez, vous pouvez aussi déposer vos dons au Relais le plus proche.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // Navigate to another page when clicked
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPage()),
                );
              },
              child: Text(
                'Contactez-nous pour en savoir plus.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // Change color to indicate it's clickable
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'A quel endroit donner ? Merci !',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HowToDonatePage(),
  ));
}

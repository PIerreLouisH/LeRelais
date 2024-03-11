import 'package:flutter/material.dart';
import 'package:les_relais/pages/tab2/comment_marche.dart';

class DonationDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Que deviennent vos dons ?'),
        backgroundColor: Color(0xFFE2016B),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Que deviennent vos dons ?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Une valorisation de vos vêtements à 97%',
                style: TextStyle(fontSize: 16),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                child: Image.asset(
                  'assets/images/banConfierCollecfil.jpg', // Replace with your image file
                  fit: BoxFit.cover,
                ),
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
                        'Le Relais récupère chaque semaine plus de 1 800 tonnes de textiles: ce qui représente 55 % de la collecte en France qui sont acheminés vers 14 centres de tri.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '- Les textiles en bon état sont revendus à bas prix dans les Ding Fring du Relais ou destinés à l’export.',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '- Ceux qui ne peuvent plus être portés sont recyclés comme chiffons/matière première pour l’industrie.',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '- 3% de perte sur toute la collecte - ensuite utilisée en valorisation énergétique.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  // Implement the navigation logic to the link you want to redirect
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CommentMarche()),
                  );
                },
                child: Text(
                  'Pour en savoir plus sur le circuit des textiles au Relais, cliquez ici.',
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Au Relais, chaque centime généré est réinvesti à des fins de lutte contre l’exclusion.',
                style: TextStyle(fontSize: 16),
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
                        'En 30 ans plus de 2 200 emplois ont été créés.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DonationDetailsPage(),
  ));
}

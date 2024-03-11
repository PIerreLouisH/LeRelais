// lib/pages/partenariats_page.dart

import 'package:flutter/material.dart';

class Partenariats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Partenariats'),
        backgroundColor: Color(0xFF00A5AB), // Use the same color as the tab
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section 1
              _buildSection('Agir pour l\'environnement et l\'emploi', [
                'Vous êtes une enseigne de la grande distribution, un réseau de franchises, une boutique indépendante...',
                'Vous souhaitez agir pour l’insertion de personnes en situation d’exclusion et contribuer à la protection de l’environnement, tout en associant vos clients et en dynamisant votre point de vente ?',
                'Le Relais peut devenir un partenaire privilégié pour vous aider à concrétiser et valoriser votre engagement en matière de responsabilité sociale et de développement durable.',
              ]),

              // Section 2
              _buildBulletPoints([
                'De nombreuses enseignes nous font déjà confiance.',
                'Avec chacune d’elles, nous avons mené une réflexion sur mesure pour construire ensemble un partenariat durable et porteur de sens.',
                'Ce partenariat peut prendre différentes formes : montage d’opérations spéciales de collecte en magasins, pose de conteneurs sur votre parking, reprise de vos fins de stock et invendus (avantageuse en terme de défiscalisation), échanges de bonnes pratiques ou formations conjointes pour vos équipes et nos équipes de vente… et bien d’autres choses encore !',
              ]),

              // Section 3
              _buildParagraph(
                  'Quel que soit le dispositif mis en œuvre, nous veillons à ce qu’il soit le fruit de valeurs partagées et d’une volonté d’agir ensemble, durablement, au service de l’intérêt général.'
              ),

              // Section 4
              _buildParagraph(
                  'Vous souhaitez en savoir plus sur les collaborations possibles avec le Relais ? N’hésitez pas à nous contacter en cliquant ici.'
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<String> content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: content.map((item) => _buildParagraph(item)).toList(),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildBulletPoints(List<String> points) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: points.map((point) => _buildBulletPoint(point)).toList(),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.arrow_forward,
            size: 16,
            color: Colors.blue,
          ),
          SizedBox(width: 8),
          Flexible(
            child: Text(text),
          ),
        ],
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(text),
    );
  }
}

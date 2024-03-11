// lib/pages/references_collectivites_page.dart

import 'package:flutter/material.dart';

class ReferencesCollectivites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nos références'),
        backgroundColor: Color(0xFF0769B2), // Use the same color as the tab
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section 1
              _buildSection('Vous êtes une collectivité', [
                '30 ans d’existence, le Relais a accompagné plus de 7 000 communes.',
                //'le Relais offre à chacun de ses interlocuteurs une écoute, un professionnalisme et une souplesse de fonctionnement pour répondre au mieux aux attentes et aux problématiques locales.',
              ]),

              // Section 2
              _buildReferencesList([
                'Secteur Nord: Smitom du Santerre (80), ...', // Add all references here
                'Secteur Nord-Ouest: Communauté d’Agglomération du Choletais (49), ...',
                'Secteur Nord-Est: Communauté de communes de Guebwiller (68), ...',
                'Secteur Ile-de-France: Ville de Paris (75), ...',
                'Secteur Centre: Communauté de communes d’Argenton-sur-Creuse (36), ...',
                'Secteur Sud-Ouest: Commune d’Orleix (65), ...',
                'Secteur Sud-Est: Communauté d’agglomération de Narbonne (11), ...',
              ]),
              /*
              // Section 3
              _buildTestimonials([
                'La collaboration avec le Relais a permis de soutenir l\'emploi au sein d\'associations implantées sur notre territoire. Un rapport de confiance s\'est instauré. Dounia Besson, 18 ème vice-présidente de la Communauté Urbaine de Lyon, en charge de l\'insertion, de l\'emploi et de l\'économie solidaire.',
                'Travailler avec le Relais nous permet d’agir pour l’environnement, tout en contribuant à une économie locale raisonnée et solidaire. Une vingtaine d’emplois ont été créés ; 50 de plus sont attendus pour demain avec l’ouverture d’un centre de tri. Véronique Fayet, adjointe au Maire en charge des solidarités, Ville de Bordeaux ; Vice-présidence de la Communauté Urbaine de Bordeaux.',
              ]),*/
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

  Widget _buildReferencesList(List<String> references) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ils nous font confiance :',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: references.map((item) => _buildBulletPoint(item)).toList(),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  /*
  Widget _buildTestimonials(List<String> testimonials) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Témoignages :',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: testimonials.map((item) => _buildParagraph(item)).toList(),
        ),
        SizedBox(height: 16),
      ],
    );
  }*/

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(text),
    );
  }
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

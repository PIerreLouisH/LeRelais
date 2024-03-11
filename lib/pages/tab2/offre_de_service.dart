// lib/pages/offre_service_page.dart

import 'package:flutter/material.dart';
import 'package:les_relais/pages/contact.dart';

class OffreService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offre de service'),
        backgroundColor: Color(0xFF0769B2), // Use the same color as the tab
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section 1
              _buildSection('Une solution clé en main pour votre collecte', [
                'Premier opérateur de collecte/valorisation textile en France, le Relais vous propose la mise en place ou le développement de la collecte sélective des TLC sur votre territoire.',
                'Expérience de 30 ans, process industriel, équipes, et moyens matériels pour garantir un service professionnel et de qualité.',
                'Prestation encadrée par une convention, totalement gratuite et autonome.',
              ]),

              // Section 2
              _buildSection('Nos garanties', [
                'Des passages réguliers pour chaque conteneur, au moins une fois par semaine et jusqu’à huit fois par semaine selon les saisons et les besoins.',
                'Nettoyage des abords à chaque passage pour une propreté permanente des sites.',
                'Entretien régulier des conteneurs (lavage, réparation…).',
                'Standard téléphonique, indiqué sur les conteneurs, pour signaler tout incident sur le terrain. Intervention dans les 24 h en cas de besoin.',
                'Conteneurs et véhicules géolocalisés et optimisation des circuits de collecte.',
                'Reporting régulier sur les tonnages collectés pour une transparence totale.',
              ]),

              // Section 3
              _buildSection('Partenariat avec les associations', [
                'Collaboration étroite avec les associations locales assurant des collectes de vêtements.',
                'Définition avec les associations des bases d\'un partenariat incluant une "clause de solidarité".',
                'La clause garantit aux associations le maintien d\'un volume identique de textiles collectés, avec un approvisionnement par le Relais en cas de manque.',
                'Service d\'enlèvement gratuit pour les associations n\'utilisant que 10 % des dons et se retrouvant avec 90 % de déchets.',
              ]),

              // Section 4
              _buildSection('En savoir plus et nous contacter', [
                'Pour plus d\'informations sur nos activités et notre offre de service, contactez le Relais le plus proche.',
                'Cliquez ici pour contacter le Relais.',
              ]),
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
          children: content.map((item) => _buildBulletPoint(item)).toList(),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.done,
            size: 16,
            color: Colors.green,
          ),
          SizedBox(width: 8),
          Flexible(
            child: Text(text),
          ),
        ],
      ),
    );
  }
}

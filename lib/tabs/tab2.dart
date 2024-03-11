import 'package:flutter/material.dart';
import 'package:les_relais/pages/tab2/pourquoi_choisir_le_relais.dart';
import 'package:les_relais/pages/tab2/comprendre_filliere_textile.dart';
import 'package:les_relais/pages/tab2/offre_de_service.dart';
import 'package:les_relais/pages/tab2/partenariats.dart';
import 'package:les_relais/pages/tab2/pose_conteneurs.dart';
import 'package:les_relais/pages/tab2/references_collectivites.dart';
import 'package:les_relais/pages/tab2/references_entreprises.dart';
import 'package:les_relais/pages/tab2/comment_marche.dart';

class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organiser'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ExpansionTile(
              title: Text('Vous êtes une collectivité'),
              children: [
                // Add left side submenus here
                ListTile(
                  title: Text('Pourquoi Choisir le Relais ?'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Collectivites()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Comprendre la Fillière Textile'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ComprendreTextile()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Offre de service'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OffreService()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Nos références'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReferencesCollectivites()),
                    );
                  },
                )
              ],
            ),
            // Section 2: "Vous êtes une entreprise"
            ExpansionTile(
              title: Text('Vous êtes une entreprise'),
              children: [
                // Add right side submenus here
                ListTile(
                  title: Text('Pose de conteneurs'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PoseConteneurs()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Partenariats'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Partenariats()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Nos Références'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReferenceEntreprise()),
                    );
                  },
                ),
              ],
            ),
            ListTile(
              title: Text(
                'Comment ça marche?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CommentMarche()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0769B2), Color(0xFF2B94D2)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Bienvenue dans la section "Organisons ensemble la collecte" !',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Vous êtes une collectivité ou une entreprise et vous souhaitez en savoir plus sur Le Relais? Vous êtes au bon endroit!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              // You can add more widgets or images here
            ],
          ),
        ),
      ),
    );
  }
}
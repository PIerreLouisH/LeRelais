import 'package:flutter/material.dart';

class EntrepriseAButSocioEconomique extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entreprise à but socio-économique (EBS)"),
        backgroundColor: Color(0xFF00A5AB),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 24, color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Un modèle d\'entreprise fondé sur l\'intérêt général',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Le Relais porte est porté vers l’économie sociale et solidaire (ESS). Il a remporté en 2009 le prix de l’entrepreneur social de la Fondation Schwab et du Boston Consulting Group.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
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
                        'Le Relais agit pour le maintien de la filière textile dans le champ de l’ESS. C’est ainsi que le Relais et Emmaüs, rejoints par Tissons la Solidarité (réseau du Secours Catholique) se sont mobilisés au début des années 2000, dans une période de crise de la filière, pour l’instauration de l’éco-contribution textile, lancée en 2007. Le Relais a aussi participé à la création de l’Inter Réseaux de la Fibre Solidaire (IRFS), association regroupant le Relais, Emmaüs France, le Secours Catholique et Tissons la Solidarité et destinée à préserver la filière au sein de l’ESS.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
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
                        'Aujourd`\'hui le Relais c\'est l\’Entreprise à But Socio-Économique (EBS).  Cela passe par un plafonnement : les salaires les plus élevés ne dépassant pas 3 fois le SMIC. Tous les Relais ont adopté le statut de SCOP (Société Coopérative et Participative), au bout de 5 ans le salarié devient actionnaire. Mais l’EBS va plus loin, défendant le principe d’une entreprise qui fixe un objectif social. Le Relais vise donc la reconnaissance officielle, sous la forme d’un nouveau statut juridique qui fait ses preuves depuis 30 ans.',
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
    home: EntrepriseAButSocioEconomique(),
  ));
}

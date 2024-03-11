import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SaviezVousPage(),
  ));
}

class SaviezVousPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Le saviez-vous ?'),
        backgroundColor: Color(0xFF00A5AB),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            BulletPointItem(
              'Le Relais a collecté près de 90 000 tonnes de textiles en 2012.',
            ),
            BulletPointItem(
              'Le Relais s’est battu pour l’instauration de l’éco-contribution textile.',
            ),
            BulletPointItem(
              'En 30 ans, le Relais a créé plus de 2 200 emplois.',
            ),
            BulletPointItem(
              'Le Relais accompagne plus de la moitié des communes françaises de plus de 1 000 habitants.',
            ),
            SizedBox(height: 16),
            BulletPointItem(
              '700 000 tonnes de textiles sont jetées chaque année en France.',
            ),
            BulletPointItem(
              'Au Relais, chaque centime généré est réinvesti à des fins de lutte contre l’exclusion.',
            ),
            BulletPointItem(
              'Avec ses 16 000 conteneurs, le Relais intervient sur l’ensemble du territoire français.',
            ),
            BulletPointItem(
              'Le Relais, c’est 12 % de croissance par an depuis 5 ans.',
            ),
            SizedBox(height: 16),
            BulletPointItem(
              '10 conteneurs du Relais posés, c’est un emploi créé sur l’ensemble de la filière.',
            ),
            BulletPointItem(
              'À partir de fibres textiles, le Relais fabrique un isolant pour le bâtiment.',
            ),
            BulletPointItem(
              'L’économie sociale et solidaire, c’est plus de 10 % des emplois en France.',
            ),
            BulletPointItem(
              'Le Relais travaille main dans la main avec les associations collectant localement des vêtements.',
            ),
          ],
        ),
      ),
    );
  }
}

class BulletPointItem extends StatelessWidget {
  final String point;

  BulletPointItem(this.point);

  @override
  Widget build(BuildContext context) {
    return _buildBulletPoint(point);
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
}

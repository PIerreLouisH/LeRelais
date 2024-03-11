import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  GoogleMapController? mapController;

  // Example site locations
  List<SiteLocation> siteLocations = [
    SiteLocation(
      name: 'Le Relais Métisse®',
      latitude: 50.524380,
      longitude: 2.852930,
      website: 'http://www.isolantmetisse.com/',
      phone: '03 21 69 40 77',
      email: 'metisse@lerelais.org',
      address: 'Z.I Artois Flandres 422 boulevard Est 62138 Billy-Berclau',
    ),
    SiteLocation(
      name: 'Le Relais 75',
      latitude: 48.8566,
      longitude: 2.3522,
      phone: '01 41 71 04 39',
      email: 'lerelais75@lerelais.org',
      address: '4 rue Albert Einstein 93000 Bobigny',
    ),
    SiteLocation(
      name: 'Le Relais 80',
      latitude: 50.020760,
      longitude: 2.040720,
      phone: '03 22 48 20 86',
      email: 'lerelais80@lerelais.org',
      address: 'Rue des Moulins Bleus 80830 L’Etoile',
    ),
    SiteLocation(
      name: 'Le Relais Cambrésis',
      latitude: 50.187230,
      longitude: 3.416210,
      website: 'https://www.lerelais.org/relais_local.php?contact=18',
      phone: '03 27 79 08 73',
      email: 'lerelaiscambresis@lerelais.org',
      address: 'Rue du 19 Mars 1962 59292 Saint-Hilaire-Les-Cambrai'
    ),
    SiteLocation(
        name: 'Le Relais Val de Seine',
        latitude: 48.966990,
        longitude: 2.028750,
        phone: '01 39 74 85 85',
        email: 'lerelaisvaldeseine@lerelais.org',
        address: 'Ecoparc des Cettons - Secteur 1 Jaune 15, rue Panhard Levassor 78570 Chanteloup-les-Vignes'
    ),
    SiteLocation(
        name: 'Le Relais 10',
        latitude: 48.317571,
        longitude: 4.022675,
        phone: '03 25 75 93 00',
        email: 'lerelais10@lerelais.org',
        address: '15 rue des frères Michelin 10600 La Chapelle Saint Luc'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nous Contacter'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(46.6031, 1.8883),
          zoom: 5,
        ),
        markers: _createMarkers(),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  Set<Marker> _createMarkers() {
    Set<Marker> markers = Set();

    for (int i = 0; i < siteLocations.length; i++) {
      markers.add(
        Marker(
          markerId: MarkerId(siteLocations[i].name),
          position: LatLng(siteLocations[i].latitude, siteLocations[i].longitude),
          onTap: () {
            _showLocationDetails(siteLocations[i]);
          },
          icon: i == 0 ? BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue) : BitmapDescriptor.defaultMarker,
        ),
      );
    }

    return markers;
  }

  Future<void> _showLocationDetails(SiteLocation location) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(location.name),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (location.website != null)
                ListTile(
                  title: Text('Website: ${location.website}'),
                  onTap: () => _launchURL(location.website!),
                ),
              ListTile(
                title: Text('Numéro: ${location.phone}'),
                onTap: () => _launchPhone(location.phone),
              ),
              ListTile(
                title: Text('Adresse: ${location.address}'),
                onTap: () => _launchMap(location.address),
              ),
              ListTile(
                title: Text('Email: ${location.email}'),
                onTap: () => _launchEmail(location.email),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }


  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchPhone(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchMap(String address) async {
    final url = 'https://www.google.com/maps?q=$address';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchEmail(String email) async {
    final url = 'mailto:$email';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class SiteLocation {
  final String name;
  final double latitude;
  final double longitude;
  final String? website;
  final String phone;
  final String email;
  final String address;

  SiteLocation({
    required this.name,
    required this.latitude,
    required this.longitude,
    this.website,
    required this.phone,
    required this.email,
    required this.address,
  });
}

void main() {
  runApp(MaterialApp(
    home: ContactPage(),
  ));
}
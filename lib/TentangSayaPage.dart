import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TentangSayaPage extends StatelessWidget {
  // Fungsi untuk membuka URL Instagram
  Future<void> _launchURL() async {
    const url = 'https://www.instagram.com/reyonlau_?igsh=MTMzdjJ6enZyM2U4Yw==';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Tidak dapat membuka URL $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tentang Saya',
          style: TextStyle(fontSize: 24, fontFamily: 'Itim-Regular',fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Foto Profil dengan efek shadow
            Center(
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/images/reyon.jpg'),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(height: 16),

            // Nama dan Info dengan font yang lebih menarik
            Text(
              'Halo! Saya Reyon Lau Jiemin.',
              style: TextStyle(
                fontFamily: 'Itim-Regular',
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                letterSpacing: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            Text(
              'NIM: 221011401453',
              style: TextStyle(fontSize: 18, fontFamily:'Itim-Regular',color: Colors.grey[700]),
            ),
            Text(
              'Kelas: 06TPLP004',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            SizedBox(height: 20),

            // Deskripsi dengan text alignment center
            Text(
              'Saya adalah mahasiswa yang sedang belajar Flutter untuk membuat aplikasi mobile keren!',
              style: TextStyle(fontSize: 16,fontFamily:'Itim-Regular', color: Colors.black87),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 30),

            // Tombol Instagram dengan logo Instagram
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.instagram,
                size: 50,
                color: Colors.pink,
              ),
              onPressed: _launchURL,
              padding: EdgeInsets.all(16),
              splashRadius: 30,
            ),
            SizedBox(height: 10),
            Text(
              'Follow me on Instagram',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}

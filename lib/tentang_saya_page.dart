import 'package:flutter/material.dart';

class tentang_saya_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Saya'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Foto profil
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/books.jpg'),
              ),
            ),
            SizedBox(height: 16),
            // Nama dan info
            Text(
              'Halo! Saya Reyon Lau Jiemin.',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'NIM: 221011401453',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Kelas: 06tplp004',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Saya adalah mahasiswa yang sedang belajar Flutter untuk membuat aplikasi mobile keren!',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

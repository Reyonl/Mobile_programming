import 'package:flutter/material.dart';
import 'tentang_saya_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Flutter Reyon ',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Tugas Reyon Lau'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tentang Saya',
                    style: TextStyle(
                      fontFamily:'Itim-Regular',
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nama: Reyon Lau Jiemin',
                    style: TextStyle(
                      fontFamily:'Itim-Regular',
                      color: const Color.fromARGB(255, 0, 4, 8),
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'NIM: 221011401453',
                    style: TextStyle(
                      fontFamily:'Itim-Regular',
                      color: const Color.fromARGB(255, 10, 38, 47),
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Kelas: 06tplp004',
                    style: TextStyle(
                      fontFamily:'Itim-Regular',
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Tentang Saya'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tentang_saya_page()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nama : Reyon Lau Jiemin',
              style: TextStyle(fontSize: 24,fontFamily:'Itim-Regular', fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('NIM : 221011401453', style: TextStyle(fontSize: 20,fontFamily:'Itim-Regular')),
            SizedBox(height: 10),
            Text('Kelas : 06tplp004', style: TextStyle(fontSize: 18,fontFamily:'Itim-Regular')),
          ],
        ),
      ),
    );
  }
}

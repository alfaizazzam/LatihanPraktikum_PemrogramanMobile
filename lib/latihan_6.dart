import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Data berisi daftar nama, hobi, dan URL foto
  final List<Map<String, String>> data = [
    {
      'nama': 'Faiz',
      'hobi': 'Bermain Game',
      'foto': 'assets/faiz.jpg',
    },
    {
      'nama': 'Arsa',
      'hobi': 'Coding',
      'foto': 'assets/arsa.jpg',
    },
    {
      'nama': 'Adam',
      'hobi': 'Mendaki',
      'foto': 'assets/adam.jpg',
    },
    {
      'nama': 'Fikri',
      'hobi': 'Touring',
      'foto': 'assets/fikri.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Hobi Anggota Kelompok:'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          // Mendapatkan data dari list berdasarkan index
          final person = data[index];
          // Membuat card untuk setiap item
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(person['foto']!),
              ),
              title: Text(person['nama']!),
              subtitle: Text(person['hobi']!),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LDSW Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Actividad: Widgets Básicos'),
        ),
        body: Container(
          color: Colors.grey[100],
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Explorando Widgets en Flutter',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30), 
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.widgets, color: Colors.blue),
                  SizedBox(width: 10),
                  Text('Esto está dentro de un Row'),
                  SizedBox(width: 10),
                  Icon(Icons.widgets, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 40),

              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  const Text(
                    'Texto sobre un \nContainer usando Stack',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

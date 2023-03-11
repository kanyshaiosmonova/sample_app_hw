import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MediaQuery(
        data: MediaQueryData(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Sample App'),
          ),
          body: Container(
            color: Colors.red,
            child: const Center(
              child: Text('Image'),
            ),
          ),
          bottomNavigationBar: Container(
            height: 80,
            color: Color(0xff01FF02),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 80,
                  margin: const EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.add),
                      Text('Add'),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

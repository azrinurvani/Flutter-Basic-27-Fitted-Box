import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Fitted Box"),
        ),
        body: Center(
          child: Container(
            height: 110,
            width: 300,
            color: Colors.blue,
            child: FittedBox(
              alignment: Alignment.center,
              //ukuran widget text ataupun widget di dalam fit box akan mengecil menyesuaikan ukuran box nya
              // child: Text("Halllooooooooooo"),
              fit: BoxFit
                  .cover, //BoxFit.cover akan menyesuaukan ukuran child nya dari FittedBox
              child: Image.network("https://picsum.photos/150/150"),
            ),
          ),
        ),
      ),
    );
  }
}

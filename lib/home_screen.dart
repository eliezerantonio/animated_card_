import 'package:animated_card/content.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Offset offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Transform(
          transform: Matrix4.identity()
            ..setEntry(2, 3, 0.005)
            ..rotateX(0.01 * offset.dx)
            ..rotateY(0.01 * offset.dy),
          alignment: FractionalOffset.center,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                offset += details.delta;
              });
            },
            child: Container(
              width: 340,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: const Offset(0, 2),
                    color: Colors.grey[400]!,
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue.withOpacity(0.9),
                    Colors.purple.withOpacity(0.9),
                  ],
                ),
              ),
              child: const Content(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          offset = Offset.zero;
        }),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

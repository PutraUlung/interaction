import 'package:flutter/material.dart';
import 'package:interaction/second_screen.dart';
import 'package:interaction/third_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String actionLabel = 'Belum Ada Aksi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Interaction'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  //actionLabel = 'Pengguna Melakukan tap';
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()),
                );
                });
              },
              onDoubleTap: (){
                setState(() {
                  //actionLabel = 'Pengguna Melakukan double tap';
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen()),
                  );
                });
              },
              onLongPress: (){
                setState(() {
                  actionLabel = 'Pengguna Melakukan long press';
                });
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text('Aksi', style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(actionLabel),
          ],
        ),
      ),
    );
  }
}

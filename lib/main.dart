import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var label = 'This is data';
  var colorCont = Colors.red;
  @override
  Widget build(BuildContext context) {
    print('This is dadffe');
    return MaterialApp(
      title: 'Flutter State',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text('State Title'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.brown.shade400,

        child: Column(
          children: [
            SizedBox(
              height: 50
              ),
            Container(
              width: 100,
              height: 100,
              color: colorCont,
            ),
            SizedBox(
              height: 50
              ),

            Text(
              label,
              style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold
                ),
                ),
            SizedBox(
              height: 50
              ),

            ElevatedButton(
              onPressed: (){
                
                  label = 'Data is Changed value';
                  colorCont = Colors.green;
                setState(() {
                });
                
                print(label);
              },
              child: Text("Change",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
            )
          ],
        ),
        
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Future<http.Response> test() async {
    print("fg");

    http.Response returnedResult = await http.get(Uri.parse("http://10.0.2.2:8000/app/test"),
      headers: <String, String> {
      'Content-Type': 'application/json; charset-UTF-8'

      });
    print(returnedResult.body);
    return returnedResult;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("CLICK"),
            onPressed: test,
          ),
        ),
      )
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/Css_Editor.dart';
import 'package:newapp/Php_Editior.dart';
import 'package:newapp/Python_Editor.dart';

class NewApp extends StatefulWidget {
  const NewApp({super.key});

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PhpEditior()));
              },
               child: const Text("Php Editior")),
                ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PythonEditior()));
              },
               child: const Text("Python Editior")),
                ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CEditior()));
              },
               child: const Text("C++ Editior"))
            ],
          ),
        ),
      ),
    );
  }
}
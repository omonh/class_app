import 'package:flutter/material.dart'; 

class SecondScreen  extends StatelessWidget {
  const SecondScreen ({
   Key? key,
  required this.name,
  }) :super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.indigo,
         child: Center(
          child: ElevatedButton(
           onPressed: () {
            Navigator.pop(context);
           },
            child: Text('goodbey, $name'),

          ) 
      ),
    ),
    );
  }
}
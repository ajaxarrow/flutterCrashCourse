import 'package:flutter/material.dart';

class SettingsRoute extends StatelessWidget {
  const SettingsRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
            'Settings',
            style: TextStyle(color: Colors.white)
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Settings')
          ],
        ),
      ),
    );
  }
}

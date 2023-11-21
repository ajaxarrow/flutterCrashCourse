import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/counter_state.dart';

class AboutRoute extends StatelessWidget {
  const AboutRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final counterState = Provider.of<CounterState>(context);
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
            counterState.num.toString(),
            style: TextStyle(color: Colors.white)
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Abouts')
          ],
        ),
      ),
    );
  }
}

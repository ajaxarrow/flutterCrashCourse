import 'package:flutter/material.dart';
import 'package:flutter_routing/provider/counter_state.dart';
import 'package:provider/provider.dart';


class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {

  @override
  Widget build(BuildContext context) {
    final counterState = Provider.of<CounterState>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text(
              'Homepage',
              style: TextStyle(color: Colors.white)
          ),
          centerTitle: true,
          actions: [
            Icon(Icons.person),
            Icon(Icons.person_3)
          ],
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(counterState.num.toString()),
              ElevatedButton(onPressed: (){
                counterState.increaseNum();
              }, child: Text('up')),
              ElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed('/abouts');
              }, child: Text('Abouts')),
              ElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed('/settings');
              }, child: Text('Settings')),
            ],
          ),
        ),
      ),
    );
  }
}

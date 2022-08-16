import 'package:flutter/material.dart';

void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:card(),
    );
  }
}
class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Card')),
      ),
      body: Column(
        children: [
          Container(
             padding: const EdgeInsets.fromLTRB(0, 10, 0, 600),
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),


            child: Card(

              margin: const EdgeInsets.all(0),

              color: Colors.greenAccent,
              elevation: 12,
              shadowColor: Colors.grey,

              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const ListTile(
                    title: Text('Flutter'),

                    subtitle: Text('card widget',
                    style: TextStyle(color: Colors.black),),

                    leading: Icon(Icons.add_a_photo),
                    trailing: Icon(Icons.access_alarms_sharp),

                  ),


                  TextButton.icon(
                    onPressed: (){

                    },
                    label: const Text('delet'),
                    icon: const Icon(Icons.delete),
                  ),

                ],

              ),
            ),


          ),
        ],
      ),


    );
  }
}



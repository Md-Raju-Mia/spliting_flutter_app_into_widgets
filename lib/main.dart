import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Custom Widget'),
      ),
      body: Container(
        child: Column(
          children: [

            CatItems(),
            Contact(),
            SubCatItems(),
            BottomMenu(),







        ],
        ),

      )  );
  }
}

class CatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return   Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context,index) =>
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: SizedBox(
                width: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
              ),
            ), itemCount: 10, scrollDirection: Axis.horizontal),
      ),
    );
  }

}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(
          itemCount: 10,  // builder length
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text('Name'),
                subtitle: Text('Mob No'),
                trailing: Icon(Icons.delete),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SubCatItems extends StatelessWidget {
  const SubCatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return    Expanded(
      flex: 2,
      child: Container(
        color: Colors.blueGrey,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          // itemBuilder: (context, index)=>
          //     Padding(
          //         padding: const EdgeInsets.all(8.0),
          //       child: Container(
          //         width: 200,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(11),
          //           color: Colors.blue,
          //         ),
          //       ),
          //     )
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: GridView.count(
          crossAxisCount: 4, // 4 columns
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );



  }
}




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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Weather(),
    );
  }
}


class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Weather App', 
      textAlign: TextAlign.center,), 
      leading: Icon(Icons.menu),
      centerTitle: true, 
      actions: [Padding(padding: EdgeInsets.only(right: 8), 
      child: Icon(Icons.add_box_rounded),
    ),
    ],
    ),
    body: Padding(padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Yogyakarta',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        const Text('Today', style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
        const SizedBox(height: 20),
        const Text('28°C', style: TextStyle(fontSize: 100, fontWeight: FontWeight.normal, color: Colors.blue),
        ),
        const Divider(thickness: 1, height: 20, color: Colors.grey, indent: 40, endIndent: 40,),
        const SizedBox(height: 25),
        const Text('Sunny', style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
        const SizedBox(height:20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.ac_unit, color: Colors.blue),
            Text('5 km/h',style: TextStyle(fontSize: 18, color: Colors.blueGrey),),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Next 7 days', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text('Now', style: TextStyle(fontSize: 16)),
                  Text('17.00', style: TextStyle(fontSize: 16)),
                  Text('20.00', style: TextStyle(fontSize: 16)),
                  Text('23.00', style: TextStyle(fontSize: 16)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(4, (index){
                  return Column(
                    children: [
                      const Icon(Icons.ac_unit),
                      const SizedBox(height: 5),
                      const Text('28°C', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      const Icon(Icons.wind_power, color: Colors.red,),
                      const SizedBox(height: 5),
                      const Text('10 km/h', style: TextStyle(fontSize: 16, color: Colors.red)),
                      const SizedBox(height: 5),
                      const Icon(Icons.umbrella),
                      const SizedBox(height: 5),
                      const Text('0%', style: TextStyle(fontSize: 16, color: Colors.black),)
                    ],
                  );
                }),
              )
            ],
          ),
        ),

        const Text('Namira Anjani|20220140081', style: TextStyle(fontWeight: FontWeight.bold),
        ),

      ],
    ),),
    );
  }
}

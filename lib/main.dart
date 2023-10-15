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
        // useMaterial3: true,
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1Controlar = TextEditingController();
  var no2Controlar = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Calculate'),
        ),
        body: Container(
            color: Colors.green.shade100,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: no1Controlar,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: no2Controlar,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(21.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                var no1 =
                                    int.parse(no1Controlar.text.toString());
                                var no2 =
                                    int.parse(no2Controlar.text.toString());

                                var sum = no1 + no2;
                                result = "The sum $sum";

                                setState(() {});
                              },
                              child: Text('Add')),
                          ElevatedButton(
                              onPressed: () {
                                var no1 =
                                    int.parse(no1Controlar.text.toString());
                                var no2 =
                                    int.parse(no2Controlar.text.toString());

                                var dif = no1 - no2;
                                result = "The difference $dif";

                                setState(() {});
                              },
                              child: Text('Sub')),
                          ElevatedButton(
                              onPressed: () {
                                var no1 =
                                    int.parse(no1Controlar.text.toString());
                                var no2 =
                                    int.parse(no2Controlar.text.toString());

                                var mul = no1 * no2;
                                result = "The sum $mul";

                                setState(() {});
                              },
                              child: Text('Mul')),
                          ElevatedButton(
                              onPressed: () {
                                var no1 =
                                    int.parse(no1Controlar.text.toString());
                                var no2 =
                                    int.parse(no2Controlar.text.toString());

                                var div = no1 / no2;
                                result = "The sum $div";

                                setState(() {});
                              },
                              child: Text('Div')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(21),
                      child: Text(
                        result,
                        style: TextStyle(fontSize: 25),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}

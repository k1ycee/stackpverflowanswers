import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stackoverflow/api/stackHelp_api.dart';
import 'package:stackoverflow/model/stackHelp.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("favorites");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ApiExample(),
    );
  }
}

class ApiExample extends StatefulWidget {
  const ApiExample({Key? key}) : super(key: key);

  @override
  _ApiExampleState createState() => _ApiExampleState();
}

class _ApiExampleState extends State<ApiExample> {
  final items = initAndSet();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<StackHelp>>(
        future: items,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.data.toString()));
          }
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(snapshot.data![index].logo!),
                ),
                title: Text(snapshot.data![index].name!),
              ),
            );
          }
          return Center(
            child: Text("Waiting..."),
          );
        },
      ),
    );
  }
}

class HiveExample extends StatefulWidget {
  HiveExample({Key? key}) : super(key: key);

  @override
  _HiveExampleState createState() => _HiveExampleState();
}

class _HiveExampleState extends State<HiveExample> {
  Box? box = Hive.box("favorites");
  bool _isFavorite = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                '      "\n           The  entire  world ,       \n                is  not  worth \n                     A  single  Tear.\n'
                '                                                      " \n                -Imam Hazrat Ali (R) ',
                style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontFamily: "Explora",
                    fontWeight: FontWeight.w900),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: 90,
                  right: 20,
                  child: const Text(
                    '   1 ',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontFamily: "Comforter"),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: (IconButton(
                icon: Icon(Icons.favorite,
                    color: box!.isEmpty ? Colors.white : Colors.red),
                onPressed: () {
                  setState(() {
                    _isFavorite = !_isFavorite;
                  });
                  if (box!.isEmpty)
                    box!.put("isFavorite", _isFavorite);
                  else
                    box!.delete("isFavorite");
                },
              )),
            )
          ],
        ),
      ),
    );
  }
}

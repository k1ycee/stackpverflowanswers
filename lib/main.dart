// import 'dart:convert';

import 'dart:collection';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:lottie/lottie.dart';
// import 'package:http/http.dart';
// import 'package:stackoverflow/Views/tiktok_look.dart';
import 'package:stackoverflow/api/stackHelp_api.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:stackoverflow/model/stackHelp.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("favorites");
  runApp(MyApp());

  Future<String> getJson() async {
    return rootBundle.loadString('stuff.json');
  }

  print(await getJson());
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

// class Test extends StatelessWidget {
//   const Test({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }

class ApiExample extends StatefulWidget {
  const ApiExample({Key? key}) : super(key: key);

  @override
  _ApiExampleState createState() => _ApiExampleState();
}

class _ApiExampleState extends State<ApiExample> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String url = "https://www.google.com";
  PullToRefreshController? pullToRefreshController;
  InAppWebViewController? webViewController;

  bool _isLoading = false;

  // void isLoading() async {
  //   _isLoading = await webViewController!.isLoading();
  // }

  @override
  Widget build(BuildContext context) {
    
    // if(_isLoading){
    //   return Scaffold(body: ,);
    // }
    return Scaffold(
        body:
            // FutureBuilder<List<StackHelp>>(
            //   future: items,
            //   builder: (context, snapshot) {
            //     if (snapshot.hasError) {
            //       return Center(child: Text(snapshot.data.toString()));
            //     }
            //     if (snapshot.hasData) {
            //       return ListView.builder(
            //         itemCount: snapshot.data!.length,
            //         itemBuilder: (context, index) => ListTile(
            //           leading: CircleAvatar(
            //             backgroundImage: NetworkImage(snapshot.data![index].logo!),
            //           ),
            //           title: Text(snapshot.data![index].name!),
            //         ),
            //       );
            //     }
            //     return Center(
            //       child: Text("Waiting..."),
            //     );
            //   },
            // ),
            Container(
                child: _isLoading
                    ? Center(
                        child: SpinKitChasingDots(
                        size: 50,
                        color: Colors.black,
                      ))
                    : Column(children: <Widget>[
                        Expanded(
                          child: Stack(
                            children: [
                              InAppWebView(
                                //  key: webViewKey,
                                initialUrlRequest: URLRequest(
                                    url: Uri.parse("https://www.google.com")),
                                initialUserScripts:
                                    UnmodifiableListView<UserScript>([]),
                                //  initialOptions: options,
                                pullToRefreshController:
                                    pullToRefreshController,
                                onWebViewCreated: (controller) {
                                  // print("Hi");
                                  webViewController = controller;
                                  // setState(() {
                                  //   _isLoading = true;
                                  // });
                                },

                                onLoadStart: (controller, url) async {
                                  print("We're here now $url");
                                  // bool loading = await controller.isLoading();
                                  setState(() {
                                    _isLoading = true;
                                  });

                                  // Lottie.network(
                                  //     'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
                                  //     controller: _controller, onLoaded: (composition) {
                                  //   // Configure the AnimationController with the duration of the
                                  //   // Lottie file and start the animation.
                                  //   _controller
                                  //     ..duration = composition.duration
                                  //     ..forward();
                                  // });
                                  //  setState(() {
                                  //    this.url = url.toString();
                                  //    urlController.text = this.url;
                                  //  });
                                },
                                androidOnPermissionRequest:
                                    (controller, origin, resources) async {
                                  return PermissionRequestResponse(
                                      resources: resources,
                                      action: PermissionRequestResponseAction
                                          .GRANT);
                                },
                                shouldOverrideUrlLoading:
                                    (controller, navigationAction) async {
                                  var uri = navigationAction.request.url!;

                                  if (![
                                    "http",
                                    "https",
                                    "file",
                                    "chrome",
                                    "data",
                                    "javascript",
                                    "about"
                                  ].contains(uri.scheme)) {
                                    if (await canLaunch(url)) {
                                      // Launch the App
                                      await launch(
                                        url,
                                      );
                                      // and cancel the request
                                      return NavigationActionPolicy.CANCEL;
                                    }
                                  }

                                  return NavigationActionPolicy.ALLOW;
                                },
                                onLoadStop: (controller, url) async {
                                  print("We are no longer loading");

                                  _isLoading = await controller.isLoading();
                                  // setState(() {
                                  //   _isLoading = false;
                                  // });
                                  // SpinKitChasingDots();
                                },

                                onLoadError: (controller, url, code, message) {
                                  //  pullToRefreshController.endRefreshing();
                                },
                                onProgressChanged: (controller, progress) async{
                                  print("Gozimasu");
                                  // bool loading = await controller.isLoading();
                                  // setState(() {
                                    _isLoading = await controller.isLoading();
                                  // });
                                  // SpinKitChasingDots();
                                  //  if (progress == 100) {
                                  //    pullToRefreshController.endRefreshing();
                                  //  }
                                  //  setState(() {
                                  //    this.progress = progress / 100;
                                  //    urlController.text = this.url;
                                  //  });
                                },
                                onUpdateVisitedHistory:
                                    (controller, url, androidIsReload) {
                                  setState(() {
                                    this.url = url.toString();
                                    //  urlController.text = this.url;
                                  });
                                },
                                onConsoleMessage: (controller, consoleMessage) {
                                  print(consoleMessage);
                                },
                              ),
                            ],
                          ),
                        ),
                      ])));
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










// class WhitePurple extends ColorsPage{
//   static Color knights = const Color.fromARGB(255, 119, 0, 255);
//   static Color subTitle = const Color.fromARGB(255, 115, 40, 255);
//   static Color backgroundColor = const Color.fromARGB(255, 240, 240, 240);
//   static Color darkContainer = const Color.fromARGB(255, 255, 255, 255);
// }
// class WhiteRed extends ColorsPage{
//   static Color knights = const Color.fromARGB(255, 255, 0, 64);
//   static Color subTitle = const Color.fromARGB(255, 146, 1, 37);
//   static Color backgroundColor = const Color.fromARGB(255, 240, 240, 240);
//   static Color darkContainer = const Color.fromARGB(255, 255, 255, 255);
// }
// class DarkBlue extends ColorsPage{
//   static Color knights = const Color.fromARGB(255, 0, 255, 136);
//   static Color subTitle = const Color.fromARGB(255, 0, 158, 97);
//   static Color backgroundColor = const Color.fromARGB(255, 12, 12, 12);
//   static Color darkContainer = const Color.fromARGB(255, 29, 29, 29);
// }
// class DarkYellow extends ColorsPage{
//   static Color knights = const Color.fromARGB(255, 255, 217, 0);
//   static Color subTitle = const Color.fromARGB(255, 255, 220, 106);
//   static Color backgroundColor = const Color.fromARGB(255, 12, 12, 12);
//   static Color darkContainer = const Color.fromARGB(255, 29, 29, 29);
// }
// class DarkPink extends ColorsPage{
//   static Color knights = const Color.fromARGB(255, 255, 0, 140);
//   static Color subTitle = const Color.fromARGB(255, 255, 122, 233);
//   static Color backgroundColor = const Color.fromARGB(255, 12, 12, 12);
//   static Color darkContainer = const Color.fromARGB(255, 29, 29, 29);
// }

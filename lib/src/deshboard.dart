import 'package:flutter/material.dart';
import 'package:hostapp/src/chart.dart';
import 'package:number_paginator/number_paginator.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _numPages = 4;
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var pages = List.generate(
      _numPages,
      (index) => Center(
          // child: Text("Page ${index + 1}"),
          ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/path.png'),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Dashboard",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Image.asset("assets/bell.png"),
                onTap: () {},
              ),
              Text(
                "Alert",
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  child: Image.asset("assets/shape.png"),
                  onTap: () {},
                ),
                Text(
                  "Profile",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // color: Theme.of(context).backgroundColor,
              // height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/common_bg@2x.png"),
                  fit: BoxFit.cover, // -> 02
                ),
              ),
              // child: pages[_currentPage],
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0XFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(
                                20.0) //                 <--- border radius here
                            ),
                      ),
                      // width: 350,
                      // height: 170,

                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                            child: LineCharts(),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                            child: Text("Vehicles Charged",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 20),
                    child: Center(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0XFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(
                                  20.0) //                 <--- border radius here
                              ),
                        ),
                        // width: 350,
                        // height: 170,

                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                              child: LineCharts(),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                              child: Text("Vehicles Charged",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 20),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Color(0XFFFFFFFF),
                      // elevation: 10,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        // mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(23, 8, 23, 8),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Controller Id"),
                                  Image.asset("assets/arrow.png"),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(23, 5, 23, 8),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("1523697125"),
                                  Text(" ")
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(23, 0, 23, 8),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Expanded(flex: 3, child: Text("Status")),
                                  Expanded(flex: 1, child: Text("In Progress")),
                                ]),
                          ),
                          const Divider(
                            thickness: 0.8, // thickness of the line
                            indent:
                                20, // empty space to the leading edge of divider.
                            endIndent:
                                20, // empty space to the trailing edge of the divider.
                            color: Colors
                                .grey, // The color to use when painting the line.
                            // height: 0, // The divider's height extent.
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(23, 0, 23, 8),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Expanded(
                                      flex: 9, child: Text("Start Time  ")),
                                  Expanded(flex: 3, child: Text("12:45 PM")),
                                ]),
                          ),
                          const Divider(
                            thickness: 0.8, // thickness of the line
                            indent:
                                20, // empty space to the leading edge of divider.
                            endIndent:
                                20, // empty space to the trailing edge of the divider.
                            color: Colors
                                .grey, // The color to use when painting the line.
                            // height: 0, // The divider's height extent.
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(23, 8, 23, 8),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      flex: 6,
                                      child: const Text("Unit Consumed")),
                                  Expanded(flex: 2, child: const Text("6 kWh")),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: NumberPaginator(
                        numberPages: _numPages,
                        onPageChange: (int index) {
                          setState(() {
                            _currentPage = index;
                          });
                        },
                        // buttonShape: ,
                        // outlineBorder:
                        buttonShape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                          side: BorderSide(
                            color: Colors.pink,
                            width: 0.5,
                          ),
                        ),
                        buttonSelectedForegroundColor: Colors.pink,
                        buttonUnselectedForegroundColor: Colors.black,
                        buttonSelectedBackgroundColor: Colors.white,
                        buttonUnselectedBackgroundColor: Colors.white),
                  ),
                  Container()
                ],
              ),
            ),
          ),
          // LineCharts(),
          // LineCharts(),
          // LineCharts(),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
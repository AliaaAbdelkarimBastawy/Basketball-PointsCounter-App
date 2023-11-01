import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model.dart';

class PointsCounterScreen extends StatelessWidget {
  const PointsCounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Points Counter"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
              height: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Consumer<Model>(builder:
                          (BuildContext context, Model value, Widget? child) {
                        return Text(
                          '${value.TeamA}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 100),
                        );
                      }),
                      SizedBox(
                        height: 10,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Consumer<Model>(builder:
                (BuildContext context, Model value, Widget? child)
                    {
                      return  ElevatedButton(
                          onPressed: () {
                            value.AddOnePointToTeamA();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green, // Background color
                          ),
                          child: Text(
                            "Add 1 Point",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ));
                    }),
                      Spacer(
                        flex: 1,
                      ),
                      Consumer<Model>(builder:
                          (BuildContext context, Model value, Widget? child)
                      {
                        return  ElevatedButton(
                            onPressed: () {
                              value.AddTwoPointsToTeamA();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green, // Background color
                            ),
                            child: Text(
                              "Add 2 Point",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ));
                      }),
                      Spacer(
                        flex: 1,
                      ),
                      Consumer<Model>(builder:
                          (BuildContext context, Model value, Widget? child)
                      {
                        return  ElevatedButton(
                            onPressed: () {
                              value.AddThreePointsToTeamA();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green, // Background color
                            ),
                            child: Text(
                              "Add 3 Point",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ));
                      }),
                      Spacer(
                        flex: 20,
                      ),
                    ],
                  ),
                  VerticalDivider(
                    thickness: 1.5,
                    color: Colors.grey,
                    width: 70,
                    indent: 8,
                    endIndent: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Consumer<Model>(builder:
                          (BuildContext context, Model value, Widget? child) {
                        return Text(
                          '${value.TeamB}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 100),
                        );
                      }),
                      SizedBox(
                        height: 10,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Consumer<Model>(builder:
                          (BuildContext context, Model value, Widget? child)
                      {
                        return  ElevatedButton(
                            onPressed: () {
                              value.AddOnePointToTeamB();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green, // Background color
                            ),
                            child: Text(
                              "Add 1 Point",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ));
                      }),
                      Spacer(
                        flex: 1,
                      ),
                      Consumer<Model>(builder:
                          (BuildContext context, Model value, Widget? child)
                      {
                        return  ElevatedButton(
                            onPressed: () {
                              value.AddTwoPointsToTeamB();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green, // Background color
                            ),
                            child: Text(
                              "Add 2 Point",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ));
                      }),
                      Spacer(
                        flex: 1,
                      ),
                      Consumer<Model>(builder:
                          (BuildContext context, Model value, Widget? child)
                      {
                        return  ElevatedButton(
                            onPressed: () {
                              value.AddThreePointsToTeamB();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green, // Background color
                            ),
                            child: Text(
                              "Add 3 Point",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ));
                      }),
                      Spacer(
                        flex: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),

    Consumer<Model>(builder:
    (BuildContext context, Model value, Widget? child)
    {
       return ElevatedButton(
           onPressed: () {
             value.Reset();
           },
           style: ElevatedButton.styleFrom(
               primary: Colors.green, // Background color
               minimumSize: Size(150, 50)
             //El size change with text's size
           ),
           child: Text(
             "Reset",
             style: TextStyle(color: Colors.white, fontSize: 18),
           ));
    }),

          ],
        ),
      ),
    );
  }
}

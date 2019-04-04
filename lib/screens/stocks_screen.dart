import 'package:flutter/material.dart';
import '../widgets/graph_label.dart';
import '../widgets/stocks_graph.dart';

class StocksScreen extends StatefulWidget {
  @override
  _StocksScreenState createState() => _StocksScreenState();
}

class _StocksScreenState extends State<StocksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      body: Column(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 60, 20, 0),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 65, 65, 65),
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
                  child: Stack(
                    alignment: const Alignment(1.0, 1.0),
                    children: <Widget>[
                      Container(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            border: InputBorder.none,
                            hintText: 'Stock',
                          ),
                        ),
                      ),
                      FlatButton(
                        shape: CircleBorder(),
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        onPressed: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      "ABC",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 204, 38, 41),
                        ),
                        child: Align(
                          child: Text(
                            "data 1223455",
                            style: TextStyle(color: Colors.white, fontSize: 28),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 49, 47, 47),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GraphLabel("1D"),
                    GraphLabel("1W"),
                    GraphLabel("1M"),
                    GraphLabel("3M"),
                    GraphLabel("6M"),
                    GraphLabel("1Y"),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Divider(
                    height: 10,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: SimpleTimeSeriesChart.withSampleData(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
